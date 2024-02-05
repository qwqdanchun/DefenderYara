
rule Trojan_Win32_Emotetcrypt_GR_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.GR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {03 c8 8b 15 90 01 04 0f af 15 90 01 04 2b ca 2b 0d 90 01 04 a1 90 01 04 0f af 05 90 01 04 03 0d 90 01 04 03 c1 8b 4d f0 8b 55 08 0f b6 0c 0a 8b 55 0c 0f b6 04 02 33 c1 8b 0d 90 01 04 0f af 0d 90 01 04 8b 15 90 01 04 0f af 15 90 00 } //01 00 
		$a_81_1 = {73 26 70 57 31 56 42 56 4d 62 61 38 45 40 72 25 55 56 5f 6d 6a 31 47 24 32 59 4f 4c 53 51 2b 4c 6a 43 } //00 00 
	condition:
		any of ($a_*)
 
}