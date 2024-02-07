
rule Trojan_BAT_AgentTesla_NNC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NNC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 56 00 71 00 51 00 1d 09 1d 09 4d 00 1d 09 1d 09 1d 09 1d 09 45 00 1d 09 1d 09 1d 09 1d 09 2f 00 2f 00 38 00 1d 09 1d 09 4c 00 67 00 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 51 } //01 00 
		$a_01_1 = {1d 09 1d 09 42 00 43 00 73 00 52 00 4b 00 77 00 1d 09 72 00 45 00 43 00 6f 00 43 00 4b 00 39 00 77 00 4b 00 4b 00 2b 00 4d 00 47 00 4b 00 2b 00 55 00 43 00 4b 00 2b 00 67 00 4c } //01 00 
		$a_01_2 = {68 00 68 00 77 00 43 00 61 00 38 00 48 00 7a 00 77 00 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 77 00 42 00 47 00 1d 09 47 00 63 00 47 00 30 00 51 } //01 00 
		$a_01_3 = {1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 1d 09 3d 00 3d } //01 00 
		$a_01_4 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_5 = {46 72 6f 6d 42 61 73 65 36 34 } //00 00  FromBase64
	condition:
		any of ($a_*)
 
}