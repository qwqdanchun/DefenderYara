
rule Trojan_Win64_Shelm_J_MTB{
	meta:
		description = "Trojan:Win64/Shelm.J!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {48 98 8b 84 85 90 01 04 48 98 48 8b 95 90 01 04 48 01 c2 8b 85 90 01 04 48 98 0f b6 90 01 03 88 02 83 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}