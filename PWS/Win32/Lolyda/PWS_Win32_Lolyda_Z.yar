
rule PWS_Win32_Lolyda_Z{
	meta:
		description = "PWS:Win32/Lolyda.Z,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //01 00  InternetOpenA
		$a_00_1 = {2e 64 6c 6c 00 53 65 72 76 69 63 65 52 6f 75 74 65 45 78 } //01 00 
		$a_02_2 = {61 63 63 6f 75 6e 74 3d 25 73 26 70 61 73 73 77 6f 72 64 90 01 01 3d 25 73 26 70 61 73 73 77 6f 72 64 90 01 01 3d 25 73 26 70 61 73 73 65 64 90 00 } //01 00 
		$a_00_3 = {26 73 65 72 76 65 72 3d 25 73 26 69 6e 70 75 74 73 6f 75 72 63 65 3d 25 73 26 6c 65 76 65 6c 73 3d 25 64 } //01 00  &server=%s&inputsource=%s&levels=%d
		$a_00_4 = {25 73 3f 25 73 00 46 6f 72 74 68 67 6f 6e 65 72 } //00 00  猥┿s潆瑲杨湯牥
	condition:
		any of ($a_*)
 
}