
rule Trojan_Win64_Emotetcrypt_JT_MTB{
	meta:
		description = "Trojan:Win64/Emotetcrypt.JT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f af c2 48 98 49 8d 14 01 48 8b 45 28 48 01 d0 0f b6 00 44 31 c0 88 01 83 45 fc 01 8b 45 fc 48 98 8b 0d 90 01 04 8b 15 90 01 04 0f af d1 48 63 d2 48 8b 4d 20 48 29 d1 8b 15 90 01 04 48 63 d2 48 29 d1 8b 15 90 01 04 48 63 d2 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}