
rule Trojan_BAT_CoinMiner_RPW_MTB{
	meta:
		description = "Trojan:BAT/CoinMiner.RPW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 00 65 00 6d 00 70 00 6c 00 6f 00 61 00 64 00 } //01 00  tempload
		$a_01_1 = {78 00 6d 00 72 00 69 00 67 00 } //01 00  xmrig
		$a_01_2 = {6d 00 69 00 6e 00 65 00 72 00 6e 00 6f 00 64 00 65 00 } //01 00  minernode
		$a_01_3 = {6d 00 69 00 6e 00 65 00 72 00 6e 00 6f 00 2e 00 64 00 65 00 } //01 00  minerno.de
		$a_01_4 = {63 00 6f 00 6e 00 66 00 69 00 67 00 67 00 65 00 6e 00 2e 00 70 00 68 00 70 00 } //01 00  configgen.php
		$a_01_5 = {77 00 61 00 6c 00 6c 00 65 00 74 00 } //01 00  wallet
		$a_01_6 = {6d 00 69 00 73 00 74 00 65 00 72 00 62 00 61 00 6c 00 6c 00 73 00 } //01 00  misterballs
		$a_01_7 = {61 00 70 00 69 00 2e 00 69 00 70 00 69 00 66 00 79 00 2e 00 6f 00 72 00 67 00 } //01 00  api.ipify.org
		$a_01_8 = {49 00 6e 00 64 00 4d 00 69 00 6e 00 65 00 72 00 } //00 00  IndMiner
	condition:
		any of ($a_*)
 
}