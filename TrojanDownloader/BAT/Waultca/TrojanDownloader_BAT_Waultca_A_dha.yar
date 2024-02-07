
rule TrojanDownloader_BAT_Waultca_A_dha{
	meta:
		description = "TrojanDownloader:BAT/Waultca.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 08 00 00 05 00 "
		
	strings :
		$a_01_0 = {36 64 39 65 39 64 39 64 2d 62 34 35 61 2d 34 31 36 34 2d 61 38 36 34 2d 30 64 30 32 39 31 32 30 66 31 38 32 } //04 00  6d9e9d9d-b45a-4164-a864-0d029120f182
		$a_01_1 = {6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 75 00 70 00 64 00 61 00 74 00 65 00 6d 00 65 00 6c 00 74 00 64 00 6f 00 77 00 6e 00 6b 00 62 00 37 00 32 00 33 00 34 00 2e 00 63 00 6f 00 6d 00 } //04 00  microsoft.updatemeltdownkb7234.com
		$a_01_2 = {63 00 6f 00 64 00 65 00 77 00 69 00 7a 00 61 00 72 00 64 00 2e 00 6d 00 6c 00 2f 00 70 00 72 00 6f 00 64 00 75 00 63 00 74 00 69 00 76 00 69 00 74 00 79 00 2f 00 } //03 00  codewizard.ml/productivity/
		$a_01_3 = {66 00 61 00 67 00 30 00 32 00 77 00 75 00 } //02 00  fag02wu
		$a_01_4 = {43 00 75 00 72 00 72 00 65 00 6e 00 74 00 50 00 72 00 78 00 53 00 65 00 74 00 } //01 00  CurrentPrxSet
		$a_01_5 = {66 00 6f 00 72 00 6d 00 2d 00 64 00 61 00 74 00 61 00 3b 00 20 00 6e 00 61 00 6d 00 65 00 3d 00 22 00 7b 00 30 00 7d 00 22 00 3b 00 20 00 66 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 3d 00 22 00 7b 00 31 00 7d 00 22 00 } //01 00  form-data; name="{0}"; filename="{1}"
		$a_01_6 = {21 00 75 00 70 00 6c 00 20 00 } //01 00  !upl 
		$a_01_7 = {77 00 68 00 6f 00 61 00 6d 00 69 00 20 00 26 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 69 00 6e 00 66 00 6f 00 20 00 26 00 20 00 69 00 70 00 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 26 00 20 00 61 00 72 00 70 00 20 00 2f 00 61 00 } //00 00  whoami & systeminfo & ipconfig /all & arp /a
	condition:
		any of ($a_*)
 
}