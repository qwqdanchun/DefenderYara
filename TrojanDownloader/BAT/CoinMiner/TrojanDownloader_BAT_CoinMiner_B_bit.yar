
rule TrojanDownloader_BAT_CoinMiner_B_bit{
	meta:
		description = "TrojanDownloader:BAT/CoinMiner.B!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {6d 00 69 00 6e 00 65 00 72 00 67 00 61 00 74 00 65 00 2d 00 63 00 6c 00 69 00 } //1 minergate-cli
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 69 00 70 00 76 00 34 00 2e 00 69 00 63 00 61 00 6e 00 68 00 61 00 7a 00 69 00 70 00 2e 00 63 00 6f 00 6d 00 } //1 http://ipv4.icanhazip.com
		$a_01_2 = {78 00 6d 00 72 00 69 00 67 00 2e 00 7a 00 69 00 70 00 7c 00 7a 00 69 00 70 00 7c 00 78 00 6d 00 72 00 69 00 67 00 7c 00 65 00 78 00 65 00 } //1 xmrig.zip|zip|xmrig|exe
		$a_01_3 = {2f 00 61 00 70 00 69 00 2f 00 6e 00 63 00 69 00 6e 00 2f 00 67 00 65 00 74 00 2e 00 70 00 68 00 70 00 3f 00 6c 00 69 00 73 00 74 00 69 00 64 00 3d 00 } //1 /api/ncin/get.php?listid=
		$a_01_4 = {73 00 74 00 72 00 61 00 74 00 75 00 6d 00 2b 00 74 00 63 00 70 00 3a 00 2f 00 2f 00 62 00 63 00 6e 00 2e 00 70 00 6f 00 6f 00 6c 00 2e 00 6d 00 69 00 6e 00 65 00 72 00 67 00 61 00 74 00 65 00 2e 00 63 00 6f 00 6d 00 3a 00 } //1 stratum+tcp://bcn.pool.minergate.com:
		$a_03_5 = {26 00 63 00 70 00 75 00 3d 00 [0-02] 26 00 68 00 69 00 7a 00 3d 00 30 00 26 00 68 00 64 00 64 00 3d 00 [0-02] 26 00 75 00 73 00 65 00 72 00 73 00 3d 00 [0-02] 26 00 69 00 70 00 3d 00 [0-02] 26 00 64 00 6f 00 6d 00 61 00 69 00 6e 00 73 00 3d 00 [0-02] 26 00 6d 00 69 00 6e 00 69 00 6e 00 67 00 3d 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1) >=5
 
}