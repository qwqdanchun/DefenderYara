
rule Trojan_Win32_Emotet_DCU_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DCU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {99 f7 fb 8b 5d 90 01 01 0f b6 14 13 8b 45 90 01 01 0f be 1c 08 89 d8 21 d0 f7 d0 09 da 21 d0 8b 5d 90 01 01 88 04 0b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}