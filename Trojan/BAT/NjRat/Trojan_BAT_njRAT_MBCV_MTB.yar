
rule Trojan_BAT_njRAT_MBCV_MTB{
	meta:
		description = "Trojan:BAT/njRAT.MBCV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 51 00 41 00 49 00 64 00 4a 00 41 00 66 00 42 00 41 00 41 00 41 00 41 00 41 00 41 00 43 00 68 00 41 00 41 00 4c 00 41 00 41 00 4b 00 41 00 41 00 41 00 46 00 41 00 41 00 42 00 } //01 00  TQAIdJAfBAAAAAAChAALAAKAAAFAAB
		$a_01_1 = {56 00 41 00 41 00 62 00 43 00 41 00 41 00 6f 00 41 00 41 00 41 00 4b 00 4d 00 41 00 41 00 43 00 47 00 41 00 41 00 6e 00 41 00 41 00 46 00 41 00 41 00 41 00 49 00 41 00 51 00 41 00 6a 00 6f 00 41 00 42 00 41 00 51 } //00 00 
	condition:
		any of ($a_*)
 
}