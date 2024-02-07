
rule Ransom_Win32_Genasom_CG{
	meta:
		description = "Ransom:Win32/Genasom.CG,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {38 2d 39 36 32 2d 39 32 36 2d 37 36 2d 30 35 } //01 00  8-962-926-76-05
		$a_01_1 = {38 2d 39 36 32 2d 39 32 36 2d 37 36 2d 30 37 } //01 00  8-962-926-76-07
		$a_01_2 = {38 2d 39 36 33 2d 37 31 36 2d 33 30 2d 34 37 } //01 00  8-963-716-30-47
		$a_01_3 = {38 2d 39 36 35 2d 31 32 34 2d 37 36 2d 38 39 } //01 00  8-965-124-76-89
		$a_01_4 = {38 2d 39 36 35 2d 31 34 38 2d 39 31 2d 34 32 } //01 00  8-965-148-91-42
		$a_01_5 = {38 2d 39 36 35 2d 31 36 35 2d 36 34 2d 30 35 } //01 00  8-965-165-64-05
		$a_01_6 = {38 2d 39 36 35 2d 32 35 31 2d 37 37 2d 36 35 } //01 00  8-965-251-77-65
		$a_01_7 = {38 2d 39 36 35 2d 33 39 38 2d 36 32 2d 34 37 } //01 00  8-965-398-62-47
		$a_01_8 = {38 2d 39 36 35 2d 33 39 38 2d 36 32 2d 36 37 } //01 00  8-965-398-62-67
		$a_01_9 = {38 2d 39 36 37 2d 32 36 38 2d 39 38 2d 35 38 } //02 00  8-967-268-98-58
		$a_01_10 = {6b 69 73 73 6b 69 73 73 } //02 00  kisskiss
		$a_01_11 = {64 65 6c 65 74 65 2e 62 61 74 } //02 00  delete.bat
		$a_01_12 = {57 69 6e 64 6f 77 73 00 57 69 6e 64 6f 77 73 20 54 61 73 6b 20 4d 61 6e 61 67 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}