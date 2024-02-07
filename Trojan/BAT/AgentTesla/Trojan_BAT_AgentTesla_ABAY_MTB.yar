
rule Trojan_BAT_AgentTesla_ABAY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABAY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {0c 08 39 28 01 00 00 00 28 06 00 00 06 00 28 04 00 00 06 0d 12 03 28 1e 00 00 0a 12 03 28 1f 00 00 0a 20 0a 20 26 00 73 20 00 00 0a 13 04 11 04 28 21 00 00 0a 13 06 00 11 06 12 03 28 22 00 00 0a 7e 23 00 00 0a 11 04 6f 24 00 00 0a 6f 25 00 00 0a 00 00 de 0d } //01 00 
		$a_01_1 = {47 65 74 52 65 71 75 65 73 74 53 74 72 65 61 6d } //01 00  GetRequestStream
		$a_01_2 = {43 61 70 74 75 72 65 4d 79 53 63 72 65 65 6e } //01 00  CaptureMyScreen
		$a_01_3 = {43 61 70 74 75 72 65 44 65 73 6b 74 6f 70 } //01 00  CaptureDesktop
		$a_01_4 = {24 35 34 63 39 61 37 34 30 2d 39 62 64 61 2d 34 34 31 66 2d 61 32 31 35 2d 61 64 38 64 62 30 30 64 34 38 35 64 } //00 00  $54c9a740-9bda-441f-a215-ad8db00d485d
	condition:
		any of ($a_*)
 
}