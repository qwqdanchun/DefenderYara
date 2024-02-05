
rule Trojan_Win32_Emotetcrypt_GM_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.GM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b c7 0f af 3d 90 01 04 0f af c6 be 02 00 00 00 2b f0 0f af 35 90 01 04 2b 74 24 90 01 01 8b 44 24 90 01 01 2b 74 24 90 01 01 2b f9 03 74 24 90 01 01 03 d5 8d 0c 7f 8d 14 72 8a 0c 11 30 08 8b 44 24 90 01 01 83 c0 01 3b 44 24 90 01 01 89 44 24 90 01 01 0f 82 90 00 } //01 00 
		$a_81_1 = {54 67 28 54 29 26 50 2a 43 54 35 32 44 48 4a 33 25 4c 4e 48 74 57 52 4d 75 41 4d 52 66 5a 57 76 63 21 4c 76 76 4d 32 70 68 44 37 31 23 6b 35 50 52 36 21 37 43 29 68 4c 71 3e 61 4f 66 67 78 25 6a 72 47 6f 21 65 44 52 } //00 00 
	condition:
		any of ($a_*)
 
}