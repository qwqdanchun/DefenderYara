
rule Trojan_Win32_Qakbot_PE_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.PE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {2b d1 89 55 90 01 01 0f b6 05 90 01 04 33 45 90 01 01 89 45 90 01 01 0f b6 0d 90 01 04 8b 55 90 01 01 2b d1 89 55 90 01 01 0f b6 05 90 01 04 03 45 90 01 01 89 45 90 01 01 0f b6 0d 90 01 04 8b 55 90 01 01 2b d1 89 55 90 01 01 a1 00 10 00 10 03 45 90 01 01 8a 4d 90 01 01 88 08 e9 90 00 } //1
		$a_03_1 = {2b d1 89 55 90 01 01 0f b6 05 90 01 04 33 45 90 01 01 89 45 90 01 01 0f b6 0d 90 01 04 33 4d 90 01 01 89 4d 90 01 01 0f b6 15 90 01 04 8b 45 90 01 01 2b c2 89 45 90 01 01 0f b6 0d 90 01 04 8b 55 90 01 01 2b d1 89 55 90 01 01 a1 00 70 0c 10 03 45 90 01 01 8a 4d 90 01 01 88 08 e9 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}