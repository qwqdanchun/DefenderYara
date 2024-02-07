
rule Trojan_BAT_CoinMiner_CI{
	meta:
		description = "Trojan:BAT/CoinMiner.CI,SIGNATURE_TYPE_PEHSTR,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 00 65 00 74 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 42 00 72 00 65 00 61 00 64 00 63 00 72 00 75 00 6d 00 62 00 53 00 74 00 6f 00 72 00 65 00 5c 00 78 00 6d 00 72 00 5c 00 6c 00 73 00 61 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  NetFramework\BreadcrumbStore\xmr\lsass.exe
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 32 00 31 00 31 00 2e 00 33 00 32 00 2e 00 31 00 32 00 37 00 2e 00 36 00 3a 00 38 00 30 00 2f 00 65 00 7a 00 6f 00 6e 00 2f 00 69 00 6d 00 61 00 67 00 65 00 73 00 2f 00 69 00 6d 00 67 00 } //01 00  http://211.32.127.6:80/ezon/images/img
		$a_01_2 = {66 00 72 00 2e 00 6d 00 69 00 6e 00 65 00 78 00 6d 00 72 00 2e 00 63 00 6f 00 6d 00 3a 00 38 00 30 00 } //00 00  fr.minexmr.com:80
	condition:
		any of ($a_*)
 
}