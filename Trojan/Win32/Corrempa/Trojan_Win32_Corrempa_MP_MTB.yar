
rule Trojan_Win32_Corrempa_MP_MTB{
	meta:
		description = "Trojan:Win32/Corrempa.MP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {33 c9 8b c1 83 e0 0f 8a 80 90 01 04 30 81 90 01 04 41 83 f9 7c 72 e9 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}