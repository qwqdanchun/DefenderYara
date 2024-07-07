
rule Trojan_BAT_AsyncRAT_SPDD_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.SPDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_03_0 = {8d 24 00 00 01 0a 02 28 90 01 03 0a 0b 28 90 01 03 0a 0c 08 28 90 01 03 0a 03 6f 90 01 03 0a 6f 90 01 03 0a 08 06 6f 90 01 03 0a 08 08 6f 90 01 03 0a 08 6f 90 01 03 0a 6f 90 01 03 0a 0d 07 73 1e 00 00 0a 13 04 90 00 } //4
	condition:
		((#a_03_0  & 1)*4) >=4
 
}