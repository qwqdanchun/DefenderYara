
rule TrojanDownloader_Win32_VB_XP{
	meta:
		description = "TrojanDownloader:Win32/VB.XP,SIGNATURE_TYPE_PEHSTR,05 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 61 00 69 00 6e 00 77 00 65 00 62 00 2e 00 6e 00 65 00 74 00 2f 00 63 00 68 00 2f 00 } //01 00  painweb.net/ch/
		$a_01_1 = {70 00 61 00 69 00 6e 00 77 00 65 00 62 00 2e 00 6e 00 65 00 74 00 2f 00 68 00 74 00 2f 00 } //01 00  painweb.net/ht/
		$a_01_2 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 6d 00 32 00 2e 00 64 00 61 00 } //01 00  C:\Program Files\Internet Explorer\m2.da
		$a_01_3 = {2e 00 67 00 6f 00 6d 00 6f 00 77 00 69 00 65 00 6f 00 70 00 2e 00 63 00 6f 00 6d 00 } //01 00  .gomowieop.com
		$a_01_4 = {2e 00 67 00 6f 00 6d 00 62 00 61 00 69 00 68 00 6f 00 70 00 2e 00 63 00 6f 00 6d 00 } //01 00  .gombaihop.com
		$a_01_5 = {67 00 6f 00 75 00 73 00 68 00 69 00 } //00 00  goushi
	condition:
		any of ($a_*)
 
}