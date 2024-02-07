
rule Trojan_Win32_Busky_EE{
	meta:
		description = "Trojan:Win32/Busky.EE,SIGNATURE_TYPE_PEHSTR_EXT,36 01 36 01 0e 00 00 2c 01 "
		
	strings :
		$a_02_0 = {40 00 c3 c7 45 90 09 03 00 68 90 01 0c 81 90 17 03 01 01 01 75 45 6d 90 00 } //0a 00 
		$a_00_1 = {68 74 74 70 3a 2f 2f 38 38 2e 32 30 38 2e 31 37 2e 31 32 37 2f } //0a 00  http://88.208.17.127/
		$a_00_2 = {68 74 74 70 3a 2f 2f 35 38 2e 36 35 2e 32 33 39 2e 31 32 34 2f } //0a 00  http://58.65.239.124/
		$a_00_3 = {68 74 74 70 3a 2f 2f 36 33 2e 32 31 39 2e 31 37 36 2e 32 34 38 2f } //0a 00  http://63.219.176.248/
		$a_00_4 = {68 74 74 70 3a 2f 2f 36 33 2e 32 31 39 2e 31 37 38 2e 31 36 32 2f } //0a 00  http://63.219.178.162/
		$a_00_5 = {68 74 74 70 3a 2f 2f 32 30 35 2e 32 35 32 2e 32 34 2e 32 34 36 2f } //0a 00  http://205.252.24.246/
		$a_00_6 = {68 74 74 70 3a 2f 2f 32 30 35 2e 31 37 37 2e 31 32 34 2e 37 34 2f } //0a 00  http://205.177.124.74/
		$a_00_7 = {68 74 74 70 3a 2f 2f 32 30 37 2e 32 32 36 2e 31 37 31 2e 33 35 2f } //0a 00  http://207.226.171.35/
		$a_00_8 = {68 74 74 70 3a 2f 2f 32 30 37 2e 32 32 36 2e 31 37 31 2e 33 36 2f } //0a 00  http://207.226.171.36/
		$a_00_9 = {68 74 74 70 3a 2f 2f 32 30 39 2e 36 32 2e 31 30 38 2e 32 32 30 2f } //0a 00  http://209.62.108.220/
		$a_00_10 = {68 74 74 70 3a 2f 2f 32 30 39 2e 36 32 2e 31 30 38 2e 32 31 33 2f } //0a 00  http://209.62.108.213/
		$a_00_11 = {68 74 74 70 3a 2f 2f 67 65 74 79 6f 75 6e 65 65 64 2e 63 6f 6d } //0a 00  http://getyouneed.com
		$a_00_12 = {2f 63 20 64 65 6c 20 43 3a 5c 6d 79 61 70 70 2e 65 78 65 20 3e 3e 20 4e 55 4c } //0a 00  /c del C:\myapp.exe >> NUL
		$a_00_13 = {2f 63 20 64 65 6c 20 2f 66 20 43 3a 5c 6d 79 61 70 70 2e 65 78 65 2e 62 61 6b 20 3e 3e 20 4e 55 4c } //00 00  /c del /f C:\myapp.exe.bak >> NUL
	condition:
		any of ($a_*)
 
}