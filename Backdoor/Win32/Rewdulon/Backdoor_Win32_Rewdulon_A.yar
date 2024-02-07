
rule Backdoor_Win32_Rewdulon_A{
	meta:
		description = "Backdoor:Win32/Rewdulon.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 03 00 "
		
	strings :
		$a_03_0 = {80 0c 00 6c 90 01 01 ff e4 f4 ff fe 5d 20 00 6c 90 01 01 ff e4 04 90 01 01 ff f5 00 00 00 00 fc 75 6c 90 01 01 ff e4 fd 3d 6c 90 01 01 ff 43 90 01 01 ff ff 2f 90 00 } //01 00 
		$a_01_1 = {47 00 45 00 54 00 4b 00 4c 00 } //01 00  GETKL
		$a_01_2 = {32 00 34 00 31 00 20 00 43 00 68 00 61 00 6e 00 67 00 65 00 20 00 44 00 72 00 69 00 76 00 65 00 20 00 4f 00 4b 00 } //01 00  241 Change Drive OK
		$a_01_3 = {44 00 43 00 4c 00 49 00 43 00 4b 00 } //01 00  DCLICK
		$a_01_4 = {28 00 52 00 45 00 4f 00 4d 00 4f 00 56 00 41 00 42 00 4c 00 45 00 29 00 } //01 00  (REOMOVABLE)
		$a_01_5 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 65 00 72 00 } //00 00  SOFTWARE\SystemControler
		$a_00_6 = {80 10 00 00 } //eb a4 
	condition:
		any of ($a_*)
 
}