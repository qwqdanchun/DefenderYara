
rule Backdoor_Win32_PcClient_CY{
	meta:
		description = "Backdoor:Win32/PcClient.CY,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 09 00 00 0a 00 "
		
	strings :
		$a_02_0 = {68 ff 01 0f 00 ff 75 08 ff 75 fc ff 15 90 01 02 40 00 89 45 f8 83 7d f8 00 75 0e ff 75 fc ff 15 90 01 02 40 00 6a 01 58 eb 26 ff 75 f8 ff 15 90 01 02 40 00 85 c0 75 0d ff 75 fc ff 15 90 01 02 40 00 33 c0 eb 0c ff 75 fc ff 15 90 01 02 40 00 6a 01 58 90 00 } //0a 00 
		$a_02_1 = {8b 45 08 05 74 02 00 00 50 8b 45 08 05 42 08 00 00 50 ff 15 90 01 02 40 00 68 90 01 02 40 00 8b 45 08 05 42 08 00 00 50 ff 15 90 01 02 40 00 8d 85 ec fe ff ff 50 8b 45 08 05 42 06 00 00 50 ff 35 90 01 02 40 00 68 90 01 02 40 00 8b 45 08 05 42 06 00 00 50 ff 15 90 01 02 40 00 8b 45 08 05 74 02 00 00 50 8b 45 08 05 42 06 00 00 50 ff 15 90 01 02 40 00 68 3c 40 40 00 8b 45 08 05 42 06 00 00 50 ff 15 90 01 02 40 00 8b 45 08 05 f0 03 00 00 50 e8 90 01 04 59 c6 85 82 fe ff ff 08 c6 85 81 fe ff ff 08 c6 85 83 fe ff ff 04 c6 85 84 fe ff ff 02 83 65 fc 00 ff 75 08 8b 45 08 05 42 05 00 00 50 ff b5 6c fe ff ff 8d 8d 74 fe ff ff e8 90 01 04 8b 85 6c fe ff ff 89 85 5c fe ff ff ff b5 5c fe ff ff 90 00 } //01 00 
		$a_00_2 = {48 69 70 48 6f 70 31 32 33 } //01 00  HipHop123
		$a_00_3 = {4f 70 65 6e 53 65 72 76 69 63 65 41 } //01 00  OpenServiceA
		$a_00_4 = {4f 70 65 6e 53 43 4d 61 6e 61 67 65 72 41 } //01 00  OpenSCManagerA
		$a_00_5 = {44 6f 53 65 72 76 69 63 65 } //01 00  DoService
		$a_00_6 = {75 70 64 61 74 65 65 76 65 6e 74 } //01 00  updateevent
		$a_00_7 = {64 72 69 76 65 72 73 5c } //01 00  drivers\
		$a_00_8 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 } //00 00  \svchost.exe
	condition:
		any of ($a_*)
 
}