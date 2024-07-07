
rule TrojanDownloader_BAT_BitRAT_C_MTB{
	meta:
		description = "TrojanDownloader:BAT/BitRAT.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 11 01 72 90 01 01 00 00 70 28 90 01 01 00 00 0a 28 90 01 01 00 00 2b 6f 90 01 01 00 00 0a 26 20 90 00 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}