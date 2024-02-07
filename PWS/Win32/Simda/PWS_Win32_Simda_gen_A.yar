
rule PWS_Win32_Simda_gen_A{
	meta:
		description = "PWS:Win32/Simda.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 0b 00 00 04 00 "
		
	strings :
		$a_01_0 = {1b c0 25 bd 5a 34 12 50 6a 07 68 00 00 00 c0 ff 75 08 ff 15 } //02 00 
		$a_01_1 = {b8 69 75 68 00 84 d2 74 10 } //01 00 
		$a_01_2 = {6e 61 6d 65 3d 25 73 26 70 6f 72 74 3d 25 75 } //01 00  name=%s&port=%u
		$a_01_3 = {4f 70 65 72 61 5c 70 72 6f 66 69 6c 65 5c 77 61 6e 64 2e 64 61 74 } //01 00  Opera\profile\wand.dat
		$a_01_4 = {4f 70 65 72 61 5c 4f 70 65 72 61 5c 74 79 70 65 64 5f 68 69 73 74 6f 72 79 2e 78 6d 6c } //01 00  Opera\Opera\typed_history.xml
		$a_01_5 = {26 63 6f 6e 66 69 67 3d 6f 6b } //01 00  &config=ok
		$a_01_6 = {26 69 6e 6a 65 63 74 3d 6f 6b } //01 00  &inject=ok
		$a_01_7 = {21 6e 65 77 5f 63 6f 6e 66 69 67 } //01 00  !new_config
		$a_01_8 = {69 65 78 70 6c 6f 72 65 2e 65 78 65 7c 6f 70 65 72 61 2e 65 78 65 7c 6a 61 76 61 2e 65 78 65 } //01 00  iexplore.exe|opera.exe|java.exe
		$a_01_9 = {6b 65 79 6c 6f 67 2e 74 78 74 } //01 00  keylog.txt
		$a_03_10 = {69 64 3d 25 73 26 76 65 72 3d 90 01 05 26 75 70 3d 25 75 26 6f 73 3d 25 30 33 75 26 72 69 67 68 74 73 3d 25 73 26 6c 74 69 6d 65 3d 25 73 25 64 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}