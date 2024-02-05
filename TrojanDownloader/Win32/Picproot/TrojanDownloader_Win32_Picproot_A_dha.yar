
rule TrojanDownloader_Win32_Picproot_A_dha{
	meta:
		description = "TrojanDownloader:Win32/Picproot.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0e 00 00 01 00 "
		
	strings :
		$a_00_0 = {48 65 6c 70 41 73 73 69 73 74 61 6e 74 31 32 33 34 35 36 } //01 00 
		$a_00_1 = {52 75 6e 5f 49 6e 73 74 61 6c 6c 5f 48 4b 43 55 21 } //01 00 
		$a_00_2 = {47 65 74 20 46 75 6e 20 25 73 20 65 72 72 6f 72 21 } //01 00 
		$a_00_3 = {49 6e 73 74 61 6c 6c 20 53 75 63 63 65 73 73 21 } //01 00 
		$a_00_4 = {25 73 20 2f 63 20 61 74 74 72 69 62 20 2d 68 20 2d 72 20 2d 73 20 2d 61 20 25 73 20 25 73 20 2f 63 20 64 65 6c 20 25 73 20 2f 71 } //01 00 
		$a_00_5 = {6e 65 74 20 6c 6f 63 61 6c 67 72 6f 75 70 20 61 64 6d 69 6e 69 73 74 72 61 74 6f 72 73 20 48 65 6c 70 41 73 73 69 73 74 61 6e 74 20 2f 61 64 64 } //01 00 
		$a_00_6 = {00 2e 32 34 2e 6a 70 67 00 } //01 00 
		$a_00_7 = {00 2e 36 2e 6a 70 67 00 } //01 00 
		$a_00_8 = {00 53 74 61 72 74 57 6f 72 6b 00 } //01 00 
		$a_00_9 = {00 43 72 65 64 65 6e 74 69 61 6c 73 2e 00 } //01 00 
		$a_00_10 = {00 45 48 41 47 42 50 53 4c 00 } //01 00 
		$a_00_11 = {00 4d 44 44 45 46 47 45 47 45 54 47 49 5a 00 } //01 00 
		$a_00_12 = {50 48 34 2e 30 20 51 32 30 } //02 00 
		$a_03_13 = {68 d0 07 00 00 ff 15 90 01 03 10 83 ff 02 75 22 56 ff 15 90 01 03 10 8b f8 68 30 75 00 00 ff 15 90 01 03 10 57 ff 15 90 01 03 10 56 ff 15 90 00 } //00 00 
		$a_00_14 = {5d 04 00 } //00 75 
	condition:
		any of ($a_*)
 
}