
rule TrojanDownloader_Win32_Obvod_C{
	meta:
		description = "TrojanDownloader:Win32/Obvod.C,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 02 00 "
		
	strings :
		$a_03_0 = {74 08 83 c8 ff 5e 83 c4 10 c3 8a 54 24 04 a0 90 01 04 3a d0 75 18 8a 44 24 05 8a 0d 90 01 04 3a c1 90 00 } //02 00 
		$a_01_1 = {8b 54 24 18 88 14 07 8a 1c 01 03 da 81 e3 ff 00 00 00 8a 14 03 8a 1c 2e 32 da 8b 54 24 1c 88 1c 2e 46 3b f2 7c b4 } //03 00 
		$a_01_2 = {3b c1 75 71 80 3f 4f 75 6c 80 7f 01 4b 75 66 80 7f 02 20 75 60 6a } //01 00 
		$a_01_3 = {5c 2a 61 64 2a 74 78 74 00 } //01 00 
		$a_01_4 = {2e 70 68 70 3f 61 3d 25 73 26 62 3d 25 64 26 63 3d 25 64 26 64 3d 25 64 26 65 3d 25 64 26 66 3d 25 64 26 67 3d 25 64 } //01 00  .php?a=%s&b=%d&c=%d&d=%d&e=%d&f=%d&g=%d
		$a_01_5 = {53 43 52 4f 4c 4c 49 4e 47 3d 4e 4f 20 57 49 44 54 48 3d 22 25 64 22 20 48 45 49 47 48 54 3d 22 25 64 22 20 53 52 43 3d 22 25 73 22 3e 3c 2f 49 46 52 41 4d 45 3e } //01 00  SCROLLING=NO WIDTH="%d" HEIGHT="%d" SRC="%s"></IFRAME>
		$a_01_6 = {3c 73 63 72 69 70 74 20 73 72 63 3d 22 25 73 22 3e 3c 2f 73 63 72 69 70 74 3e } //01 00  <script src="%s"></script>
		$a_01_7 = {70 69 6e 67 2e 70 68 70 2f 25 64 2f 25 64 } //01 00  ping.php/%d/%d
		$a_01_8 = {72 6a 73 61 2f 73 65 6c 65 63 74 2e 70 68 70 } //00 00  rjsa/select.php
	condition:
		any of ($a_*)
 
}