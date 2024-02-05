
rule PWS_Win32_Zbot_AMH{
	meta:
		description = "PWS:Win32/Zbot.AMH,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {6a 75 58 66 89 85 90 01 02 ff ff 6a 73 58 66 89 85 90 01 02 ff ff 6a 65 58 66 89 85 90 01 02 ff ff 6a 72 58 66 89 85 90 01 02 ff ff 6a 33 58 66 89 85 90 01 02 ff ff 6a 32 58 66 89 85 90 01 02 ff ff 6a 2e 58 66 89 85 90 01 02 ff ff 6a 64 58 90 00 } //01 00 
		$a_00_1 = {62 63 30 30 35 39 35 34 34 30 65 38 30 31 66 38 61 35 64 32 61 32 61 64 31 33 62 39 37 39 31 62 } //01 00 
		$a_00_2 = {49 6e 69 74 53 65 63 75 72 69 74 79 49 6e 74 65 72 66 61 63 65 41 00 } //01 00 
		$a_00_3 = {73 00 63 00 68 00 61 00 6e 00 6e 00 65 00 6c 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_00_4 = {5f 77 76 3d 25 6c 73 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 b4 
	condition:
		any of ($a_*)
 
}