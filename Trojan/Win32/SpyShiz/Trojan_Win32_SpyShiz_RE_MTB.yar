
rule Trojan_Win32_SpyShiz_RE_MTB{
	meta:
		description = "Trojan:Win32/SpyShiz.RE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {c1 ea 07 03 15 90 01 04 c1 c2 04 2b 15 90 01 04 c1 c2 06 8b c2 d1 e8 c1 c0 03 2b c3 89 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}