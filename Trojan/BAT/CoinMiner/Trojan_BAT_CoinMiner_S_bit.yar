
rule Trojan_BAT_CoinMiner_S_bit{
	meta:
		description = "Trojan:BAT/CoinMiner.S!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 2f 00 35 00 2e 00 30 00 20 00 28 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 20 00 31 00 30 00 2e 00 30 00 3b 00 20 00 57 00 4f 00 57 00 36 00 34 00 3b 00 20 00 72 00 76 00 3a 00 35 00 33 00 2e 00 30 00 29 00 20 00 47 00 65 00 63 00 6b 00 6f 00 2f 00 32 00 30 00 31 00 30 00 30 00 31 00 30 00 31 00 20 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 2f 00 35 00 33 00 2e 00 30 00 } //01 00  Mozilla/5.0 (Windows NT 10.0; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0
		$a_01_1 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 48 00 61 00 63 00 6b 00 65 00 72 00 } //01 00  ProcessHacker
		$a_01_2 = {20 00 2d 00 70 00 20 00 78 00 20 00 2d 00 6b 00 20 00 2d 00 76 00 3d 00 30 00 20 00 2d 00 2d 00 64 00 6f 00 6e 00 61 00 74 00 65 00 2d 00 6c 00 65 00 76 00 65 00 6c 00 3d 00 31 00 20 00 2d 00 74 00 20 00 } //01 00   -p x -k -v=0 --donate-level=1 -t 
		$a_01_3 = {64 6f 77 6e 6c 6f 61 64 41 6e 64 45 78 63 65 63 75 74 65 } //01 00  downloadAndExcecute
		$a_01_4 = {61 70 70 53 68 6f 72 74 63 75 74 54 6f 53 74 61 72 74 75 70 } //01 00  appShortcutToStartup
		$a_01_5 = {73 00 74 00 72 00 61 00 74 00 75 00 6d 00 2b 00 74 00 63 00 70 00 3a 00 2f 00 2f 00 78 00 6d 00 72 00 2e 00 70 00 6f 00 6f 00 6c 00 2e 00 6d 00 69 00 6e 00 65 00 72 00 67 00 61 00 74 00 65 00 2e 00 63 00 6f 00 6d 00 3a 00 } //01 00  stratum+tcp://xmr.pool.minergate.com:
		$a_01_6 = {6d 69 6e 65 72 6e 61 6d 65 } //00 00  minername
	condition:
		any of ($a_*)
 
}