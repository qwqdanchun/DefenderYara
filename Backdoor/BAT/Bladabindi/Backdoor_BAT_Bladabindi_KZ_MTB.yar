
rule Backdoor_BAT_Bladabindi_KZ_MTB{
	meta:
		description = "Backdoor:BAT/Bladabindi.KZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 17 16 8d ?? ?? ?? 01 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 0d 09 28 ?? ?? ?? 0a 90 0a 3d 00 6f ?? ?? ?? 0a 74 ?? ?? ?? 1b 28 ?? ?? ?? 0a 0c 08 72 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}