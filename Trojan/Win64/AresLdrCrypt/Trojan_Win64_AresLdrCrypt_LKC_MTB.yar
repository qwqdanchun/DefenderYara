
rule Trojan_Win64_AresLdrCrypt_LKC_MTB{
	meta:
		description = "Trojan:Win64/AresLdrCrypt.LKC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {44 8a 04 10 48 8b 44 24 90 01 01 44 32 04 08 45 88 04 09 48 ff c1 eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}