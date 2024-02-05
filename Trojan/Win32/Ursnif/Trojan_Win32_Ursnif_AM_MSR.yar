
rule Trojan_Win32_Ursnif_AM_MSR{
	meta:
		description = "Trojan:Win32/Ursnif.AM!MSR,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {8d 84 0a c0 b7 00 00 a3 90 01 04 8b 0d 90 01 04 81 e9 65 e8 34 00 89 0d 90 01 04 8b 45 ec 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}