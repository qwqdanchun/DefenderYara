
rule Trojan_Win64_Tnega_GTM_MTB{
	meta:
		description = "Trojan:Win64/Tnega.GTM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_02_0 = {8b 57 08 48 8b ce 48 87 ff 81 f2 90 01 04 e8 90 01 04 48 85 c0 4d 87 f6 0f 84 2e 02 00 00 49 33 c6 48 ff c3 4d 89 db 48 93 48 89 1f 48 93 48 83 c7 90 01 01 4d 89 e4 48 83 fb 90 01 01 0f 82 bf ff ff ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}