
rule Trojan_BAT_AgentTesla_GCUF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.GCUF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 00 73 00 53 00 73 00 4d 00 6d 00 42 00 } //01 00  AsSsMmB
		$a_01_1 = {47 00 65 00 74 00 4d 00 61 00 6e 00 69 00 66 00 65 00 73 00 74 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 4e 00 61 00 6d 00 65 00 73 00 } //01 00  GetManifestResourceNames
		$a_01_2 = {40 00 53 00 79 00 73 00 74 00 65 00 6d 00 40 00 2e 00 40 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 40 00 2e 00 40 00 41 00 73 00 73 00 65 00 6d 00 62 00 6c 00 79 00 40 00 } //01 00  @System@.@Reflection@.@Assembly@
		$a_01_3 = {47 00 65 00 74 00 4d 00 61 00 6e 00 69 00 66 00 65 00 73 00 74 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 53 00 74 00 72 00 65 00 61 00 6d 00 } //01 00  GetManifestResourceStream
		$a_01_4 = {40 00 4c 00 6f 00 61 00 64 00 40 00 } //01 00  @Load@
		$a_01_5 = {47 65 74 54 79 70 65 73 } //01 00  GetTypes
		$a_01_6 = {54 6f 49 6e 74 65 67 65 72 } //00 00  ToInteger
	condition:
		any of ($a_*)
 
}