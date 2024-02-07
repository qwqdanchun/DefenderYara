
rule TrojanDownloader_Win32_CoinMiner_N_bit{
	meta:
		description = "TrojanDownloader:Win32/CoinMiner.N!bit,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 08 00 00 03 00 "
		
	strings :
		$a_03_0 = {68 74 74 70 3a 2f 2f 31 37 38 2e 31 35 39 2e 33 37 2e 31 31 33 2f 90 02 20 2e 65 78 65 90 00 } //03 00 
		$a_03_1 = {68 74 74 70 3a 2f 2f 31 39 34 2e 36 33 2e 31 34 33 2e 32 32 36 2f 90 02 20 2e 65 78 65 90 00 } //03 00 
		$a_03_2 = {68 74 74 70 3a 2f 2f 32 31 37 2e 31 34 37 2e 31 36 39 2e 31 37 39 2f 90 02 20 2e 65 78 65 90 00 } //02 00 
		$a_01_3 = {65 00 6c 00 65 00 63 00 74 00 72 00 75 00 6d 00 5f 00 64 00 61 00 74 00 61 00 } //02 00  electrum_data
		$a_01_4 = {65 6c 65 63 74 72 75 6d 5f 64 61 74 61 5c 77 61 6c 6c 65 74 73 } //02 00  electrum_data\wallets
		$a_01_5 = {72 00 65 00 63 00 65 00 6e 00 74 00 5f 00 73 00 65 00 72 00 76 00 65 00 72 00 73 00 } //01 00  recent_servers
		$a_01_6 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_7 = {3a 3a 3a 78 31 32 33 78 73 75 63 63 65 73 73 } //00 00  :::x123xsuccess
	condition:
		any of ($a_*)
 
}