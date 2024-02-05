
rule Trojan_Win64_Emotetcrypt_KX_MTB{
	meta:
		description = "Trojan:Win64/Emotetcrypt.KX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 89 f0 49 f7 e6 48 c1 ea 90 01 01 48 89 d3 48 c1 e3 90 01 01 48 01 d3 31 c9 31 d2 41 ff d7 48 8b 05 90 01 04 48 29 d8 0f b6 04 06 42 32 04 26 88 04 37 48 83 c6 01 48 81 fe 90 01 04 75 90 00 } //01 00 
		$a_03_1 = {33 d2 33 c9 ff 15 90 01 04 8b c7 25 90 01 04 7d 90 01 01 ff c8 83 c8 90 01 01 ff c0 48 63 c8 48 8b 05 90 01 04 0f b6 0c 01 32 0c 2b 88 0b ff c7 48 ff c3 48 83 ee 01 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}