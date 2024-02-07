
rule TrojanProxy_Win32_Banker_Z{
	meta:
		description = "TrojanProxy:Win32/Banker.Z,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 00 58 00 4e 00 6c 00 63 00 6c 00 39 00 77 00 63 00 6d 00 56 00 6d 00 4b 00 41 00 3d 00 3d 00 } //01 00  dXNlcl9wcmVmKA==
		$a_01_1 = {62 00 6d 00 56 00 30 00 64 00 32 00 39 00 79 00 61 00 79 00 35 00 77 00 63 00 6d 00 39 00 34 00 65 00 53 00 35 00 68 00 64 00 58 00 52 00 76 00 59 00 32 00 39 00 75 00 5a 00 6d 00 6c 00 6e 00 58 00 33 00 56 00 79 00 62 00 41 00 3d 00 3d 00 } //01 00  bmV0d29yay5wcm94eS5hdXRvY29uZmlnX3VybA==
		$a_01_2 = {75 00 6f 00 6b 00 38 00 59 00 37 00 37 00 36 00 37 00 79 00 68 00 69 00 69 00 37 00 } //01 00  uok8Y7767yhii7
		$a_01_3 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 46 00 20 00 2f 00 49 00 4d 00 20 00 66 00 69 00 72 00 65 00 66 00 6f 00 78 00 2e 00 65 00 78 00 65 00 20 00 26 00 20 00 65 00 78 00 69 00 74 00 } //01 00  taskkill /F /IM firefox.exe & exit
		$a_01_4 = {5c 00 64 00 65 00 6c 00 5f 00 73 00 65 00 6c 00 66 00 2e 00 62 00 61 00 74 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}