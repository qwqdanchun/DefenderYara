
rule Trojan_BAT_Snakekeylogger_OLM_MTB{
	meta:
		description = "Trojan:BAT/Snakekeylogger.OLM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {73 00 75 00 62 00 71 00 74 00 61 00 6e 00 65 00 6f 00 75 00 73 00 73 00 68 00 6f 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 44 00 4b 00 30 00 38 00 37 00 34 00 38 00 39 00 30 00 30 00 30 00 39 00 38 00 37 00 36 00 35 00 30 00 30 00 30 00 5f 00 41 00 70 00 69 00 70 00 6c 00 6e 00 64 00 76 00 2e 00 70 00 6e 00 67 00 } //02 00  subqtaneousshop.com/DK08748900098765000_Apiplndv.png
		$a_01_1 = {73 00 75 00 62 00 71 00 74 00 61 00 6e 00 65 00 6f 00 75 00 73 00 73 00 68 00 6f 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 53 00 4b 00 59 00 54 00 52 00 30 00 30 00 39 00 38 00 37 00 33 00 34 00 35 00 36 00 37 00 38 00 39 00 30 00 30 00 30 00 30 00 5f 00 4c 00 76 00 68 00 69 00 64 00 6d 00 79 00 79 00 2e 00 62 00 6d 00 70 00 } //02 00  subqtaneousshop.com/SKYTR0098734567890000_Lvhidmyy.bmp
		$a_01_2 = {31 00 39 00 38 00 2e 00 34 00 36 00 2e 00 31 00 33 00 32 00 2e 00 31 00 37 00 38 00 2f 00 38 00 38 00 38 00 38 00 5f 00 57 00 79 00 78 00 79 00 71 00 68 00 66 00 6c 00 2e 00 62 00 6d 00 70 00 } //02 00  198.46.132.178/8888_Wyxyqhfl.bmp
		$a_01_3 = {74 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 2e 00 73 00 68 00 2f 00 67 00 65 00 74 00 2f 00 65 00 48 00 62 00 77 00 78 00 77 00 2f 00 4c 00 66 00 71 00 72 00 6f 00 68 00 69 00 61 00 72 00 5f 00 4a 00 6e 00 67 00 64 00 62 00 6e 00 77 00 6e 00 2e 00 70 00 6e 00 67 00 } //02 00  transfer.sh/get/eHbwxw/Lfqrohiar_Jngdbnwn.png
		$a_01_4 = {74 00 6f 00 72 00 61 00 65 00 63 00 68 00 2e 00 63 00 6f 00 6d 00 2f 00 45 00 67 00 6d 00 79 00 6d 00 5f 00 4e 00 78 00 64 00 72 00 76 00 74 00 61 00 74 00 2e 00 6a 00 70 00 67 00 } //01 00  toraech.com/Egmym_Nxdrvtat.jpg
		$a_01_5 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_01_6 = {57 65 62 43 6c 69 65 6e 74 } //01 00  WebClient
		$a_01_7 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_8 = {54 6f 41 72 72 61 79 } //00 00  ToArray
	condition:
		any of ($a_*)
 
}