
rule Trojan_BAT_Bladabindi_SSQ_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.SSQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {72 01 00 00 70 0a 06 28 90 01 03 2b 28 90 01 03 2b 73 15 00 00 0a 20 bc 9e 00 00 1f 30 28 90 01 03 0a 0b 07 28 90 01 03 06 0c 08 28 90 01 03 0a 6f 90 01 03 0a 14 14 6f 90 01 03 0a 26 2a 90 00 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}