
rule Trojan_BAT_Bladabindi_MBCL_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.MBCL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {2b 1b 2b 1c 2b 1d 2b 1e 2b 0a 2b 21 2b 22 02 6f 6f 00 00 0a 0b 19 2c f2 } //01 00 
		$a_01_1 = {39 63 61 64 65 34 32 65 2d 35 63 63 35 2d 34 34 65 61 2d 39 38 39 32 2d 64 61 31 36 34 64 30 32 38 61 30 65 } //00 00 
	condition:
		any of ($a_*)
 
}