
rule Trojan_Win32_Ursnif_DHC_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.DHC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {83 c0 01 a3 90 01 04 83 3d 90 01 04 06 7d 40 8b 0d 90 01 04 8b 15 90 01 04 0f af 14 8d 90 01 04 89 15 90 01 04 8b 45 08 69 c0 15 0c 00 00 2b 05 90 01 04 a3 90 01 04 8b 0d 90 01 04 3b 0d 90 01 04 75 02 eb 02 eb aa 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}