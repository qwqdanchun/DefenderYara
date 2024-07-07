
rule Trojan_BAT_Seraph_AEAA_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AEAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {07 08 07 8e 69 5d 1f 09 58 1f 0b 58 1f 14 59 91 61 28 90 01 01 00 00 0a 90 01 01 08 20 89 10 00 00 58 20 88 10 00 00 59 90 01 01 8e 69 5d 91 59 20 ff 00 00 00 58 17 58 20 00 01 00 00 5d d2 9c 08 17 58 0c 90 00 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}