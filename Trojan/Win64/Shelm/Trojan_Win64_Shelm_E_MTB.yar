
rule Trojan_Win64_Shelm_E_MTB{
	meta:
		description = "Trojan:Win64/Shelm.E!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b 45 04 39 85 b4 03 00 00 7d 90 01 01 48 63 85 b4 03 00 00 0f b6 44 05 70 83 f0 90 01 01 48 63 8d b4 03 00 00 88 44 0d 70 eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}