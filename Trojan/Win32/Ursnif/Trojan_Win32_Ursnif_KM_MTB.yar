
rule Trojan_Win32_Ursnif_KM_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.KM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {68 b3 0c 00 00 6a 00 e8 90 01 04 03 05 90 01 04 01 05 90 01 04 a1 90 01 04 01 05 90 01 04 a1 90 01 04 01 05 90 01 04 eb 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}