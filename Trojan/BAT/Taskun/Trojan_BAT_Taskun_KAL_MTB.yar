
rule Trojan_BAT_Taskun_KAL_MTB{
	meta:
		description = "Trojan:BAT/Taskun.KAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 07 06 8e 69 5d 91 11 90 01 01 61 13 90 01 01 06 11 90 01 01 06 8e 69 5d 91 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}