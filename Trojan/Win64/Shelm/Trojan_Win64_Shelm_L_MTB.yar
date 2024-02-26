
rule Trojan_Win64_Shelm_L_MTB{
	meta:
		description = "Trojan:Win64/Shelm.L!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {39 7c 24 58 74 90 01 01 48 8d 54 24 50 48 8b cb ff 15 90 01 02 00 00 85 c0 90 00 } //02 00 
		$a_03_1 = {41 8b 3e 48 8d 15 90 01 02 00 00 48 03 fd 48 8b cf e8 90 01 02 00 00 85 c0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}