
rule Trojan_Win32_Qakbot_EVV_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.EVV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {03 d8 89 5d a4 8b 45 a8 8b 55 d8 01 02 8b 45 c4 03 45 a4 89 45 a0 8b 45 d8 8b 00 33 45 a0 89 45 a0 8b 45 a0 8b 55 d8 89 02 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}