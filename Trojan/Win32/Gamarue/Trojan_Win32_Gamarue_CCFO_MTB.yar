
rule Trojan_Win32_Gamarue_CCFO_MTB{
	meta:
		description = "Trojan:Win32/Gamarue.CCFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8d 44 11 b0 83 f0 90 01 01 88 45 ef 0f b7 8d 90 01 01 fe ff ff 0f b6 95 90 01 01 fe ff ff 03 ca 83 e1 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}