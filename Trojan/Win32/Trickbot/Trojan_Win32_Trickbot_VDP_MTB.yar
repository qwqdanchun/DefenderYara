
rule Trojan_Win32_Trickbot_VDP_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.VDP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 02 00 "
		
	strings :
		$a_02_0 = {05 34 85 47 92 90 01 01 10 88 90 01 05 eb 90 00 } //02 00 
		$a_00_1 = {8a 1c 10 8b 7c 24 14 8a 3c 37 30 df 8b 74 24 18 88 3c 16 } //02 00 
		$a_00_2 = {35 30 35 56 53 55 32 6d 6a 36 77 61 6c 36 65 52 33 61 44 63 6d } //00 00 
	condition:
		any of ($a_*)
 
}