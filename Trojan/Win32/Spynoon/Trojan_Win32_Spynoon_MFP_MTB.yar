
rule Trojan_Win32_Spynoon_MFP_MTB{
	meta:
		description = "Trojan:Win32/Spynoon.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_81_0 = {4f 66 66 6c 69 6e 65 20 4b 65 79 6c 6f 67 67 65 72 20 53 74 61 72 74 65 64 } //01 00  Offline Keylogger Started
		$a_81_1 = {4f 6e 6c 69 6e 65 20 4b 65 79 6c 6f 67 67 65 72 20 53 74 61 72 74 65 64 } //01 00  Online Keylogger Started
		$a_81_2 = {52 65 6d 63 6f 73 20 72 65 73 74 61 72 74 65 64 20 62 79 20 77 61 74 63 68 64 6f 67 21 } //01 00  Remcos restarted by watchdog!
		$a_81_3 = {55 70 6c 6f 61 64 69 6e 67 20 66 69 6c 65 20 74 6f 20 43 26 43 3a } //01 00  Uploading file to C&C:
		$a_81_4 = {57 61 74 63 68 64 6f 67 20 6d 6f 64 75 6c 65 20 61 63 74 69 76 61 74 65 64 } //00 00  Watchdog module activated
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Spynoon_MFP_MTB_2{
	meta:
		description = "Trojan:Win32/Spynoon.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 05 00 03 00 00 05 00 "
		
	strings :
		$a_02_0 = {8a 14 0f 8a c1 02 90 01 01 c0 c2 90 01 01 80 f2 90 01 01 2a 90 01 01 04 90 01 01 88 04 90 01 01 41 3b 90 00 } //05 00 
		$a_01_1 = {bc af 34 b0 6f 41 8f b6 7c c9 f9 a8 87 33 f1 42 } //0a 00 
		$a_02_2 = {8b 45 f8 83 c0 90 01 01 89 45 90 01 01 8b 4d 90 02 0a 8b 55 f4 03 55 f8 8a 02 88 45 90 01 01 0f b6 4d ff 90 02 0a 83 f2 90 01 01 88 55 90 01 01 0f b6 45 90 01 01 2b 45 90 02 0a c1 f9 90 02 05 c1 e2 90 01 01 0b ca 88 4d 90 01 01 0f b6 45 90 01 01 f7 d0 90 02 07 83 e9 90 02 08 c1 fa 90 02 05 c1 e0 90 01 01 0b d0 90 02 0a 88 4d 90 01 01 0f b6 55 90 01 01 f7 da 90 02 0a 88 45 90 01 01 0f b6 4d 90 01 01 33 4d 90 01 01 88 4d 90 01 01 0f b6 55 90 01 01 81 ea 90 02 04 88 55 90 02 05 c1 f8 90 02 05 c1 e1 90 01 01 0b c1 90 02 07 83 ea 90 02 08 83 f0 90 02 0a 8a 55 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}