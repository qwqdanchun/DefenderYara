
rule Trojan_Win32_Tibs_EY{
	meta:
		description = "Trojan:Win32/Tibs.EY,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {89 ce 83 c9 ff 41 81 c1 90 01 04 81 e9 90 01 04 8d 16 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}