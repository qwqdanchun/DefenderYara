
rule Trojan_BAT_RevengeRAT_DD_MTB{
	meta:
		description = "Trojan:BAT/RevengeRAT.DD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {20 20 4e 00 00 28 90 01 03 0a 00 20 20 4e 00 00 28 90 01 03 0a 00 20 20 4e 00 00 28 90 01 03 0a 00 20 20 4e 00 00 28 90 01 03 0a 00 72 90 01 03 70 17 8d 90 01 03 01 25 16 1f 2d 9d 28 90 01 03 0a 17 9a 6f 90 01 03 0a 72 90 01 03 70 17 8d 90 01 03 01 25 16 1f 2d 9d 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}