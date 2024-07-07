
rule Trojan_Win32_CoinMiner_QD_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.QD!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 00 63 00 6c 00 69 00 63 00 6b 00 2e 00 70 00 68 00 70 00 3f 00 63 00 6e 00 76 00 5f 00 69 00 64 00 3d 00 } //2 /click.php?cnv_id=
		$a_01_1 = {2d 00 6f 00 20 00 73 00 74 00 72 00 61 00 74 00 75 00 6d 00 2b 00 74 00 63 00 70 00 3a 00 2f 00 2f 00 78 00 6d 00 72 00 2d 00 65 00 75 00 31 00 2e 00 6e 00 61 00 6e 00 6f 00 70 00 6f 00 6f 00 6c 00 2e 00 6f 00 72 00 67 00 3a 00 } //2 -o stratum+tcp://xmr-eu1.nanopool.org:
		$a_01_2 = {2d 00 70 00 20 00 78 00 20 00 2d 00 2d 00 64 00 6f 00 6e 00 61 00 74 00 65 00 2d 00 6c 00 65 00 76 00 65 00 6c 00 3d 00 31 00 20 00 2d 00 42 00 20 00 2d 00 2d 00 6d 00 61 00 78 00 2d 00 63 00 70 00 75 00 2d 00 75 00 73 00 61 00 67 00 65 00 3d 00 39 00 30 00 20 00 2d 00 74 00 } //1 -p x --donate-level=1 -B --max-cpu-usage=90 -t
		$a_01_3 = {5c 00 78 00 62 00 6f 00 6f 00 73 00 74 00 65 00 72 00 5c 00 } //1 \xbooster\
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}