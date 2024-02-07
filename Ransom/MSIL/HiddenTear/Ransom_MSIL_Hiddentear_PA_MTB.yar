
rule Ransom_MSIL_Hiddentear_PA_MTB{
	meta:
		description = "Ransom:MSIL/Hiddentear.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {72 00 65 00 6e 00 20 00 2a 00 2e 00 78 00 6c 00 73 00 20 00 2a 00 2e 00 76 00 6f 00 6c 00 76 00 6f 00 34 00 33 00 } //01 00  ren *.xls *.volvo43
		$a_01_1 = {6e 00 65 00 74 00 73 00 68 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 73 00 65 00 74 00 20 00 6f 00 70 00 6d 00 6f 00 64 00 65 00 20 00 6d 00 6f 00 64 00 65 00 3d 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //01 00  netsh firewall set opmode mode=disable
		$a_01_2 = {74 00 73 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 41 00 20 00 61 00 6e 00 74 00 69 00 2a 00 } //01 00  tskill /A anti*
		$a_01_3 = {64 00 65 00 6c 00 20 00 2f 00 51 00 20 00 2f 00 46 00 20 00 43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 6b 00 61 00 73 00 70 00 65 00 72 00 73 00 6b 00 79 00 5c 00 2a 00 2e 00 2a 00 } //01 00  del /Q /F C:\Program Files\kaspersky\*.*
		$a_01_4 = {59 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 75 00 73 00 69 00 6e 00 67 00 20 00 73 00 65 00 63 00 72 00 65 00 74 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 6d 00 65 00 74 00 68 00 6f 00 64 00 2e 00 } //01 00  Your files has been encrypted by using secret encryption method.
		$a_01_5 = {74 00 65 00 6d 00 70 00 2e 00 62 00 61 00 74 00 } //01 00  temp.bat
		$a_01_6 = {76 00 6f 00 6c 00 76 00 6f 00 2e 00 65 00 78 00 65 00 } //00 00  volvo.exe
		$a_00_7 = {5d 04 00 00 } //83 4c 
	condition:
		any of ($a_*)
 
}