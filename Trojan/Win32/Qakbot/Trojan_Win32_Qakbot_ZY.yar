
rule Trojan_Win32_Qakbot_ZY{
	meta:
		description = "Trojan:Win32/Qakbot.ZY,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //1
		$a_03_1 = {80 ea 80 88 55 f0 e8 90 01 04 0f b6 4d 90 02 03 0f b6 45 90 02 03 0f b6 4d 90 02 03 0f b6 4d 90 02 03 0f b6 4d 90 02 03 0f b6 45 90 02 03 0f b6 45 90 02 03 0f b6 45 90 02 03 0f b6 45 90 02 03 0f b6 45 90 02 03 0f b6 45 90 02 03 0f b6 45 90 02 03 0f b6 45 90 02 03 0f b6 45 90 02 03 0f b6 45 90 02 03 0f b6 45 90 01 03 6a 28 90 01 01 89 55 fc e8 90 00 } //10
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*10) >=11
 
}