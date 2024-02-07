
rule TrojanDownloader_BAT_CoinMiner_I_bit{
	meta:
		description = "TrojanDownloader:BAT/CoinMiner.I!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {6d 00 69 00 6e 00 65 00 72 00 64 00 2d 00 78 00 36 00 34 00 2d 00 67 00 65 00 6e 00 65 00 72 00 69 00 63 00 43 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 65 00 64 00 2e 00 64 00 61 00 74 00 } //01 00  minerd-x64-genericCompressed.dat
		$a_02_1 = {52 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 90 02 04 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_00_2 = {70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 } //01 00  pastebin.com
		$a_00_3 = {2d 00 6f 00 20 00 73 00 74 00 72 00 61 00 74 00 75 00 6d 00 2b 00 74 00 63 00 70 00 3a 00 2f 00 2f 00 78 00 6d 00 67 00 2e 00 73 00 75 00 70 00 72 00 6e 00 6f 00 76 00 61 00 2e 00 63 00 63 00 3a 00 37 00 31 00 32 00 38 00 20 00 2d 00 75 00 } //00 00  -o stratum+tcp://xmg.suprnova.cc:7128 -u
	condition:
		any of ($a_*)
 
}