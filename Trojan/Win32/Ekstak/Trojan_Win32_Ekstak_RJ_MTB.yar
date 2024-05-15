
rule Trojan_Win32_Ekstak_RJ_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.RJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 8b ec 83 ec 08 56 68 0d ef 64 00 e8 cf 6d fb ff e9 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ekstak_RJ_MTB_2{
	meta:
		description = "Trojan:Win32/Ekstak.RJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {55 8b ec 6a 00 e8 90 01 01 3b 04 00 8b 45 14 50 e8 90 01 01 3b 04 00 e9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}