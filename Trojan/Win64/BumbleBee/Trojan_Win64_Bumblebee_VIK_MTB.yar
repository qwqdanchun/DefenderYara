
rule Trojan_Win64_Bumblebee_VIK_MTB{
	meta:
		description = "Trojan:Win64/Bumblebee.VIK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {49 8d 34 0b 4c 8b 74 24 40 4d 2b e3 48 81 c2 90 01 04 4d 8b cb 48 2b f9 49 8b 8a 98 02 00 00 48 8b 81 90 01 04 48 0f af c2 48 89 81 90 01 04 49 81 82 90 01 08 41 8a 0c 34 2a 4c 24 90 01 01 32 4c 24 90 01 01 49 8b 42 90 01 01 88 0c 06 83 fb 08 0f 84 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}