
rule Trojan_Win32_Zbot_BAH_MTB{
	meta:
		description = "Trojan:Win32/Zbot.BAH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b ec c7 05 90 02 04 7e d2 4a 50 c7 05 90 02 04 61 00 00 00 c7 05 90 02 04 e6 ff be 09 c7 05 90 02 04 62 00 00 00 c7 05 90 02 04 a0 f0 76 e0 c7 05 90 02 04 63 00 00 00 c7 05 90 02 04 3e a2 aa ac c7 05 90 02 04 64 00 00 00 c7 05 90 02 04 ca f3 a2 81 90 00 } //02 00 
		$a_01_1 = {68 3e a2 aa ac 68 7e d2 4a 50 68 ca f3 a2 81 68 88 98 8a 59 68 8e d7 be 43 68 00 3a b4 93 68 40 49 5a fd 68 66 3d 7e 05 68 ca f3 a2 81 68 88 98 8a 59 } //00 00 
	condition:
		any of ($a_*)
 
}