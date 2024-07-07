
rule TrojanDownloader_BAT_CoinMiner_BU_bit{
	meta:
		description = "TrojanDownloader:BAT/CoinMiner.BU!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 DownloadFile
		$a_01_2 = {2d 00 6f 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 6f 00 6f 00 6c 00 2e 00 62 00 69 00 74 00 63 00 6c 00 6f 00 63 00 6b 00 65 00 72 00 73 00 2e 00 63 00 6f 00 6d 00 3a 00 38 00 33 00 33 00 32 00 20 00 2d 00 75 00 } //1 -o http://pool.bitclockers.com:8332 -u
		$a_01_3 = {73 00 76 00 68 00 6f 00 73 00 74 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 svhost.Resources
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}