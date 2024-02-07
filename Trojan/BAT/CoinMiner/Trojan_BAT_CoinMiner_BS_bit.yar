
rule Trojan_BAT_CoinMiner_BS_bit{
	meta:
		description = "Trojan:BAT/CoinMiner.BS!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 00 69 00 74 00 63 00 6f 00 69 00 6e 00 4d 00 69 00 6e 00 65 00 72 00 } //01 00  BitcoinMiner
		$a_01_1 = {63 00 6f 00 69 00 6e 00 2d 00 6d 00 69 00 6e 00 65 00 72 00 } //01 00  coin-miner
		$a_01_2 = {63 00 67 00 6d 00 69 00 6e 00 65 00 72 00 } //01 00  cgminer
		$a_01_3 = {48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  HKCU\Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_4 = {53 74 61 72 74 42 6f 74 4b 69 6c 6c 65 72 } //01 00  StartBotKiller
		$a_01_5 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 56 00 69 00 64 00 65 00 6f 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 6c 00 65 00 72 00 } //00 00  SELECT * FROM Win32_VideoController
	condition:
		any of ($a_*)
 
}