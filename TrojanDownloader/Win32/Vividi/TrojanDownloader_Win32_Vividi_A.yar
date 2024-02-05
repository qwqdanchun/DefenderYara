
rule TrojanDownloader_Win32_Vividi_A{
	meta:
		description = "TrojanDownloader:Win32/Vividi.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 03 00 "
		
	strings :
		$a_02_0 = {4e 8b 45 dc 80 7c 30 ff 2f 75 90 01 01 8d 85 48 fe ff ff 50 68 01 01 00 00 e8 90 01 04 6a 00 6a 01 6a 02 e8 90 01 04 8b f0 66 c7 85 38 fe ff ff 02 00 83 ff 01 7c 90 01 01 81 ff ff ff 00 00 7e 90 01 01 bf 50 00 00 00 90 00 } //01 00 
		$a_02_1 = {2e 69 6e 66 6f 2f 90 01 01 2e 65 78 65 90 00 } //01 00 
		$a_00_2 = {43 3a 5c 54 45 4d 50 5c 31 2e 65 78 65 } //01 00 
		$a_00_3 = {31 32 30 2e 31 32 35 2e 32 30 31 2e 31 30 31 } //01 00 
		$a_00_4 = {47 45 54 20 2f 31 2e 65 78 65 20 48 54 54 50 2f 31 2e 31 } //01 00 
		$a_00_5 = {41 63 63 65 70 74 2d 4c 61 6e 67 75 61 67 65 3a 20 65 6e 2d 75 73 3b 71 3d 30 2e 35 } //00 00 
	condition:
		any of ($a_*)
 
}