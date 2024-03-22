
rule TrojanDownloader_Win32_Gamaredon_SL_MTB{
	meta:
		description = "TrojanDownloader:Win32/Gamaredon.SL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 69 64 63 6f 6e 3a 63 6d 64 2e 65 78 65 20 2f 63 20 63 6f 70 79 20 2f 79 20 25 54 45 4d 50 25 5c 90 02 09 2e 6d 6f 76 20 25 41 50 50 44 41 54 41 25 5c 90 02 09 2e 6d 6f 76 2e 74 6d 70 90 00 } //01 00 
		$a_03_1 = {68 69 64 63 6f 6e 3a 63 6d 64 2e 65 78 65 20 2f 63 20 64 65 6c 20 2f 66 20 2f 71 20 25 41 50 50 44 41 54 41 25 5c 90 02 09 2e 6d 6f 76 2e 74 6d 70 90 00 } //01 00 
		$a_03_2 = {22 68 69 64 63 6f 6e 3a 63 6d 64 2e 65 78 65 20 2f 63 20 73 74 61 72 74 20 2f 62 20 25 41 50 50 44 41 54 41 25 5c 90 02 09 2e 6d 6f 76 2e 76 62 73 22 90 00 } //01 00 
		$a_01_3 = {53 65 6c 66 44 65 6c 65 74 65 3d 22 31 22 } //00 00  SelfDelete="1"
	condition:
		any of ($a_*)
 
}