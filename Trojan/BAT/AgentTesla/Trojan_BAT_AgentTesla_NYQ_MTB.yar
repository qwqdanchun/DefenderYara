
rule Trojan_BAT_AgentTesla_NYQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NYQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 9f b6 3f 09 1f 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 d5 00 00 00 33 00 00 00 31 01 00 00 6c 05 00 00 be 02 00 00 01 00 00 00 f1 01 00 00 29 00 00 00 b5 02 } //01 00 
		$a_01_1 = {58 4a fc 59 23 19 14 4c 93 79 36 e2 6a f3 a0 01 00 16 01 00 11 43 6f 6e 66 75 73 65 72 45 78 20 76 31 2e } //01 00 
		$a_01_2 = {24 32 34 37 37 33 65 63 39 2d 34 32 30 35 2d 34 33 37 61 2d 38 34 37 38 2d 63 37 63 31 61 35 33 62 31 64 34 65 } //01 00  $24773ec9-4205-437a-8478-c7c1a53b1d4e
		$a_01_3 = {57 4c 50 58 5f 48 41 43 4b 5f 50 52 4f 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //00 00  WLPX_HACK_PRO.Resources.resources
	condition:
		any of ($a_*)
 
}