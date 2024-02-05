
rule Trojan_Win32_Remcos_PFD_MTB{
	meta:
		description = "Trojan:Win32/Remcos.PFD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b 4d 0c 8b 45 f8 8b 14 81 8b 4d fc 33 14 8d 90 01 04 8b 45 08 8b 4d f8 89 14 88 83 7d fc 90 01 01 75 90 01 01 33 d2 89 55 fc ff 45 f8 ff 45 fc 8b 45 f8 3b 45 10 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}