
rule TrojanDownloader_Win32_Renos_KX{
	meta:
		description = "TrojanDownloader:Win32/Renos.KX,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0d 00 00 02 00 "
		
	strings :
		$a_01_0 = {50 4f 53 54 20 2f 6d 6e 68 62 63 6b 6a 6d 64 68 63 6b 6a 2e 70 68 70 3f } //02 00  POST /mnhbckjmdhckj.php?
		$a_01_1 = {3d 76 32 36 4d 6d 6a 53 79 53 } //02 00  =v26MmjSyS
		$a_01_2 = {64 61 74 61 3d 75 6a 6e 54 33 32 4f 2f 46 39 71 73 44 79 41 } //01 00  data=ujnT32O/F9qsDyA
		$a_01_3 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 77 67 65 74 20 33 2e 30 } //02 00  User-Agent: wget 3.0
		$a_01_4 = {50 4f 53 54 20 2f 66 61 6b 62 77 71 2e 70 68 70 3f } //02 00  POST /fakbwq.php?
		$a_01_5 = {64 61 74 61 3d 76 7a 6a 63 77 32 71 2f } //02 00  data=vzjcw2q/
		$a_01_6 = {50 4f 53 54 20 2f 62 73 6b 63 75 61 2e 70 68 70 3f } //01 00  POST /bskcua.php?
		$a_01_7 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4d 6f 7a 69 6c 6c 61 2f 36 2e 30 20 28 57 69 6e 64 6f 77 73 3b 20 77 67 65 74 20 33 2e 30 29 } //02 00  User-Agent: Mozilla/6.0 (Windows; wget 3.0)
		$a_01_8 = {3d 76 32 32 4d 6b 6a 50 6e 47 } //01 00  =v22MkjPnG
		$a_03_9 = {2e 70 68 70 3f 90 02 03 3d 76 32 32 4d 90 00 } //02 00 
		$a_01_10 = {64 61 74 61 3d 73 53 2b 4d 35 32 33 68 43 39 71 78 42 57 41 } //01 00  data=sS+M523hC9qxBWA
		$a_01_11 = {3d 3d 20 48 54 54 50 2f 31 2e 31 0d 0a 43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 77 77 2d 66 6f 72 6d 2d 75 72 6c 65 6e 63 6f 64 65 64 } //9c ff 
		$a_00_12 = {4d 00 61 00 67 00 6e 00 65 00 74 00 2e 00 43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2e 00 41 00 72 00 74 00 69 00 66 00 61 00 63 00 74 00 73 00 2e 00 64 00 6c 00 6c 00 } //00 00  Magnet.Content.Artifacts.dll
	condition:
		any of ($a_*)
 
}