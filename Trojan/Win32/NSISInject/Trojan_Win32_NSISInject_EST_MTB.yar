
rule Trojan_Win32_NSISInject_EST_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.EST!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 c4 08 89 c7 83 ec 10 0f 28 05 00 20 40 00 0f 11 04 24 ff 15 90 01 04 89 c6 57 6a 01 68 90 01 04 50 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}