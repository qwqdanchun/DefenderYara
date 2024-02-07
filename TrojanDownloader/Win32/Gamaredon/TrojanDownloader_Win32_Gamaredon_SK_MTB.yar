
rule TrojanDownloader_Win32_Gamaredon_SK_MTB{
	meta:
		description = "TrojanDownloader:Win32/Gamaredon.SK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 69 64 63 6f 6e 3a 63 6d 64 2e 65 78 65 20 2f 63 20 65 63 68 6f 20 27 90 02 09 2e 69 63 6f 3e 3e 20 25 41 50 50 44 41 54 41 25 5c 5c 90 02 09 2e 69 63 6f 2e 74 6d 70 2e 76 62 73 90 00 } //01 00 
		$a_03_1 = {22 68 69 64 63 6f 6e 3a 63 6d 64 2e 65 78 65 20 2f 63 20 73 74 61 72 74 20 2f 62 20 25 41 50 50 44 41 54 41 25 5c 5c 90 02 09 2e 69 63 6f 2e 74 6d 70 2e 76 62 73 22 90 00 } //01 00 
		$a_03_2 = {52 75 6e 50 72 6f 67 72 61 6d 3d 22 68 69 64 63 6f 6e 3a 63 6d 64 2e 65 78 65 20 2f 63 20 65 63 68 6f 20 24 3e 20 25 41 50 50 44 41 54 41 25 5c 5c 90 02 09 2e 69 63 6f 2e 74 6d 70 2e 76 62 73 22 90 00 } //01 00 
		$a_01_3 = {53 65 6c 66 44 65 6c 65 74 65 3d 22 31 22 } //00 00  SelfDelete="1"
	condition:
		any of ($a_*)
 
}