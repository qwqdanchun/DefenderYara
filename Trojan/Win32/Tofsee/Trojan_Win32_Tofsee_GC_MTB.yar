
rule Trojan_Win32_Tofsee_GC_MTB{
	meta:
		description = "Trojan:Win32/Tofsee.GC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_02_0 = {83 c4 04 33 c0 85 ff 74 90 01 01 30 1c 30 40 3b c7 72 90 01 01 e8 90 01 04 8b 4d f8 8b 55 08 8a 45 ff 30 02 42 e2 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}