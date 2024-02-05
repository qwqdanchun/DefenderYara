
rule Trojan_Win32_Trickbot_PVL_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.PVL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_02_0 = {55 8b ec b8 90 01 04 e8 90 01 04 53 90 00 } //02 00 
		$a_02_1 = {58 5b 6a 04 68 00 30 00 00 68 00 e1 f5 05 6a 00 ff 15 90 01 04 89 45 e4 50 53 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}