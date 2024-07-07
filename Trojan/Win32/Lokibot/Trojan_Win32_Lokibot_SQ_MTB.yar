
rule Trojan_Win32_Lokibot_SQ_MTB{
	meta:
		description = "Trojan:Win32/Lokibot.SQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {6a 40 68 00 30 00 00 68 90 01 02 00 00 6a 00 e8 90 01 04 90 02 05 90 05 10 01 90 33 c0 89 90 01 02 be 90 01 04 bb 90 01 04 90 05 10 01 90 8b 90 02 03 03 90 01 02 90 05 10 01 90 8a 90 01 01 90 05 10 01 90 90 03 01 01 34 80 90 02 02 90 05 10 01 90 88 90 01 02 90 05 10 01 90 8a 90 01 02 90 05 10 01 90 88 90 01 01 90 05 10 01 90 90 02 04 e8 90 01 04 90 05 10 01 90 8b 90 01 01 90 05 10 01 90 05 90 01 04 90 05 10 01 90 89 90 01 02 90 05 10 01 90 43 4e 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}