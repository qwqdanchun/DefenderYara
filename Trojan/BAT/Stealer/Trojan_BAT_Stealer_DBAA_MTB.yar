
rule Trojan_BAT_Stealer_DBAA_MTB{
	meta:
		description = "Trojan:BAT/Stealer.DBAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_01_0 = {8e 69 5d 1f 09 58 1f 0e 58 1f 17 59 91 07 08 07 8e 69 5d 1f 09 58 1f 0e 58 1f 17 59 91 61 } //5
	condition:
		((#a_01_0  & 1)*5) >=5
 
}