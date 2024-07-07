
rule Trojan_Win32_Qakbot_CF_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.CF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 45 f8 03 05 90 02 04 48 a3 90 02 04 6a 00 e8 90 02 04 8b d8 a1 90 02 04 8b 00 03 45 f8 03 d8 6a 00 e8 90 02 04 03 d8 a1 90 02 04 89 18 a1 90 02 04 03 05 90 02 04 a3 90 02 04 a1 90 02 04 8b 00 33 05 90 02 04 a3 90 02 04 a1 90 02 04 8b 15 90 02 04 89 10 8b 45 f8 83 c0 04 89 45 f8 33 c0 a3 90 02 04 a1 90 02 04 83 c0 04 03 05 90 02 04 a3 90 02 04 8b 45 f8 3b 05 90 02 04 0f 90 00 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}