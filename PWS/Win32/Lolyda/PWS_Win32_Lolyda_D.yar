
rule PWS_Win32_Lolyda_D{
	meta:
		description = "PWS:Win32/Lolyda.D,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c } //01 00 
		$a_01_1 = {70 6f 73 74 32 30 30 37 } //01 00 
		$a_01_2 = {25 73 3f 73 65 72 76 65 72 3d 25 73 26 67 61 6d 65 69 64 3d 25 73 26 70 61 73 73 3d 25 73 26 70 69 6e 3d 25 73 26 77 75 70 69 6e 3d 25 73 26 72 6f 6c 65 3d 25 73 26 65 71 75 3d } //00 00 
	condition:
		any of ($a_*)
 
}