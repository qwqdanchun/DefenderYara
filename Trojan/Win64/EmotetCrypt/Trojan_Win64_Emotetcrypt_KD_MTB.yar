
rule Trojan_Win64_Emotetcrypt_KD_MTB{
	meta:
		description = "Trojan:Win64/Emotetcrypt.KD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 c0 01 89 84 24 90 01 04 8b 44 24 90 01 01 39 84 24 90 01 04 7d 90 01 01 48 63 84 24 90 01 04 0f b6 bc 04 90 01 04 8b 84 24 90 01 04 99 b9 90 01 04 f7 f9 48 63 ca 48 8b 05 90 01 04 0f b6 04 08 8b d7 33 d0 48 63 8c 24 90 01 04 48 8b 84 24 90 01 04 88 14 08 eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}