
rule Backdoor_Linux_Mirai_DO_MTB{
	meta:
		description = "Backdoor:Linux/Mirai.DO!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {02 51 20 21 90 01 01 62 00 00 90 01 04 38 42 00 37 a0 62 00 00 24 63 00 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}