
rule TrojanProxy_Win32_Tinxy_D{
	meta:
		description = "TrojanProxy:Win32/Tinxy.D,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {c6 45 fc d5 c6 45 fd ae c6 45 fe 8b c6 45 ff 48 ff 75 fc } //03 00 
		$a_03_1 = {74 48 6a 10 8d 45 e8 53 50 e8 90 01 02 00 00 83 c4 0c 66 c7 45 e8 02 00 89 5d ec 68 82 23 00 00 e8 90 00 } //01 00 
		$a_01_2 = {2f 73 65 61 72 63 68 2e 70 68 70 3f 70 3d 25 30 34 64 26 73 3d 25 73 26 } //01 00  /search.php?p=%04d&s=%s&
		$a_01_3 = {26 71 3d 00 77 77 77 2e 73 65 61 72 63 68 2e 6c 69 76 65 2e } //01 00 
		$a_01_4 = {2f 70 61 67 65 61 64 2f 69 63 6c 6b } //02 00  /pagead/iclk
		$a_01_5 = {70 72 6f 63 65 73 73 2d 64 6f 6d 61 69 6e 00 00 70 72 6f 63 65 73 73 2d 63 6c 69 63 6b 73 } //02 00 
		$a_01_6 = {3c 73 70 61 6e 3e 00 00 75 73 65 72 2d 61 67 65 } //00 00 
	condition:
		any of ($a_*)
 
}