
rule Trojan_Win32_QakBot_RPB_MTB{
	meta:
		description = "Trojan:Win32/QakBot.RPB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {88 55 ff 0f be 45 fe 83 c0 75 88 45 fe 0f be 4d fe 83 e9 17 88 4d fe 0f be 55 fe 83 ca 45 88 55 fe 0f b6 45 ff d1 f8 88 45 ff 0f b6 4d ff 81 f1 ff 00 00 00 88 4d ff 0f bf 55 dc } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_QakBot_RPB_MTB_2{
	meta:
		description = "Trojan:Win32/QakBot.RPB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 12 03 15 90 01 03 00 03 c2 8b 15 90 01 03 00 89 02 a1 90 01 03 00 03 05 90 01 03 00 48 a3 90 01 08 00 03 05 90 01 03 00 a3 90 01 03 00 90 00 } //01 00 
		$a_03_1 = {00 83 c0 04 a3 90 01 03 00 33 c0 a3 90 01 03 00 a1 90 01 03 00 83 c0 04 03 05 90 01 03 00 a3 90 01 03 00 a1 90 01 03 00 3b 05 90 01 03 00 0f 82 59 ff ff ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}