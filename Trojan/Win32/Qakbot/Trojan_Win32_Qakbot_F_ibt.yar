
rule Trojan_Win32_Qakbot_F_ibt{
	meta:
		description = "Trojan:Win32/Qakbot.F!ibt,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {31 c9 8f 45 90 01 01 0b 4d 90 01 01 89 55 90 01 01 89 ca 01 c2 52 8b 55 90 01 01 58 89 7d 90 01 01 83 e7 00 33 bb 90 01 04 83 e1 00 31 f9 8b 7d 90 01 01 39 c1 76 24 8d 83 90 01 04 83 65 90 01 02 ff 75 90 01 01 31 04 90 01 01 8d 83 90 01 04 53 83 24 90 01 02 31 04 90 01 01 ff 93 90 00 } //01 00 
		$a_03_1 = {50 5e 01 ce 89 f0 5e 89 55 90 01 01 33 55 90 01 01 33 93 90 01 04 83 e1 00 09 d1 8b 55 90 01 01 39 c1 76 90 01 01 8d 83 90 01 04 c7 45 90 01 05 ff 75 90 01 01 31 04 90 01 01 8d 83 90 01 04 83 65 90 01 02 ff 75 90 01 01 09 04 90 01 01 ff 93 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}