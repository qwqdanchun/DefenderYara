
rule Trojan_Win32_Zenpak_QQ_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.QQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8a 45 0c 8a 4d 08 30 c8 8b 15 90 01 04 81 c2 90 01 04 89 15 90 01 04 0f b6 c0 5d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}