
rule Trojan_Win32_Qbot_BS_MTB{
	meta:
		description = "Trojan:Win32/Qbot.BS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {03 f8 68 50 11 00 00 ff 15 90 01 04 03 45 90 01 01 8b 55 90 01 01 8a 0c 32 88 0c 38 8b 55 90 01 01 83 c2 01 89 55 90 01 01 e9 90 00 } //1
		$a_02_1 = {83 e9 15 89 0d 90 01 04 8b 15 90 01 04 03 55 90 01 01 03 15 90 01 04 89 15 90 01 04 a1 90 01 04 2b 05 90 01 04 a3 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}