
rule Trojan_Win32_Qakbot_FW_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.FW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {89 18 8b 45 c4 03 45 a4 89 45 a0 68 90 01 04 e8 90 01 04 68 90 01 04 e8 90 01 04 68 90 01 04 e8 90 01 04 8b 45 d8 8b 00 33 45 a0 89 45 a0 8b 45 a0 8b 55 d8 89 02 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}