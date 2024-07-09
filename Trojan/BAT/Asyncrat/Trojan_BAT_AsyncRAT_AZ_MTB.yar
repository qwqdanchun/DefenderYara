
rule Trojan_BAT_AsyncRAT_AZ_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.AZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {07 09 06 09 91 08 09 08 6f ?? ?? ?? 0a 5d 6f ?? ?? ?? 0a 61 d2 9c 09 17 58 0d 09 06 8e 69 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}