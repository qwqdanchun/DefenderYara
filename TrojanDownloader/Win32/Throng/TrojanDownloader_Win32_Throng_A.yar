
rule TrojanDownloader_Win32_Throng_A{
	meta:
		description = "TrojanDownloader:Win32/Throng.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 78 70 61 6e 64 3d 25 75 26 69 64 3d 25 73 26 76 65 72 73 69 6f 6e 3d 25 75 } //01 00  expand=%u&id=%s&version=%u
		$a_01_1 = {3c 28 5b 61 2d 7a 5f 5d 2b 29 3e 28 3f 2a 29 3c 2f 28 5b 61 2d 7a 5f 5d 2b 29 3e } //01 00  <([a-z_]+)>(?*)</([a-z_]+)>
		$a_01_2 = {25 73 5c 69 62 6d 2e 74 78 74 } //01 00  %s\ibm.txt
		$a_01_3 = {73 72 63 3d 25 64 26 70 61 73 73 77 6f 72 64 3d 25 73 } //01 00  src=%d&password=%s
		$a_01_4 = {26 63 6f 64 65 3d 25 73 26 6b 65 79 3d 25 73 } //01 00  &code=%s&key=%s
		$a_01_5 = {25 64 7c 25 64 7c 25 64 7c 25 64 7c 25 64 } //01 00  %d|%d|%d|%d|%d
		$a_01_6 = {43 6f 6f 6b 69 65 3a 20 25 73 3d 25 73 } //01 00  Cookie: %s=%s
		$a_01_7 = {25 64 2c 25 64 } //01 00  %d,%d
		$a_01_8 = {5c 64 6e 66 2e 65 78 65 } //01 00  \dnf.exe
		$a_01_9 = {68 74 74 70 3a 2f 2f 32 30 39 2e 31 31 2e 32 34 34 2e 35 31 2f 70 2e 70 68 70 3f 6e 3d 6d } //00 00  http://209.11.244.51/p.php?n=m
	condition:
		any of ($a_*)
 
}