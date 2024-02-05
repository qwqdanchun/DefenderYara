
rule TrojanDownloader_Win32_Agent_ZDE{
	meta:
		description = "TrojanDownloader:Win32/Agent.ZDE,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {6a 00 6a 00 6a 00 6a 00 6a 00 68 a4 2f 41 00 68 a4 2f 41 00 68 a4 2f 41 00 e8 f9 8d ff ff 8d 4d ec } //01 00 
		$a_01_1 = {2f 00 62 00 72 00 2e 00 79 00 6f 00 75 00 74 00 75 00 62 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 77 00 61 00 74 00 63 00 68 00 3f 00 76 00 3d 00 54 00 77 00 35 00 54 00 65 00 6a 00 72 00 53 00 49 00 45 00 41 00 00 00 ff ff ff ff 2c 00 00 00 36 32 46 43 36 32 45 46 30 42 36 36 38 37 38 30 38 33 45 38 30 46 32 46 33 33 39 43 43 33 37 32 39 37 33 31 31 41 34 45 38 43 42 30 00 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}