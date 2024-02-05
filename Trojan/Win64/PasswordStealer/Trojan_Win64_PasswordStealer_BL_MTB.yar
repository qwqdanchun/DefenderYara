
rule Trojan_Win64_PasswordStealer_BL_MTB{
	meta:
		description = "Trojan:Win64/PasswordStealer.BL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {42 0f b6 4c 00 04 8b 15 90 02 04 02 d0 32 d1 42 88 54 00 04 48 ff c0 48 83 f8 08 72 90 00 } //01 00 
		$a_03_1 = {42 0f b6 04 01 2c 90 01 01 42 88 04 01 48 ff c1 48 83 f9 90 01 01 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}