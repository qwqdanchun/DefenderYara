
rule Trojan_Win32_SpyEyes_RAA_MTB{
	meta:
		description = "Trojan:Win32/SpyEyes.RAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {0f b6 ca 03 c1 8b 4d 90 01 01 25 ff 00 00 00 8a 80 90 01 04 33 cd 5e e8 90 01 04 8b e5 5d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}