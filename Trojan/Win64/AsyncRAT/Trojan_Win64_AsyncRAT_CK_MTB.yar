
rule Trojan_Win64_AsyncRAT_CK_MTB{
	meta:
		description = "Trojan:Win64/AsyncRAT.CK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {48 98 0f b6 94 05 90 01 03 00 8b 85 90 01 03 00 48 98 0f b6 84 05 90 01 03 00 31 c2 8b 85 90 01 03 00 48 98 88 94 05 90 01 03 00 83 85 90 01 03 00 01 8b 85 90 01 03 00 48 98 48 3d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}