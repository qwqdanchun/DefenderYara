
rule Trojan_Win32_Emotetcrypt_EQ_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.EQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 55 d0 2b ca 2b 0d 90 01 04 2b 0d 90 01 04 2b 0d 90 01 04 8b 45 d4 03 c8 2b 0d 90 01 04 2b 0d 90 01 04 2b 0d 90 01 04 03 0d 90 01 04 8b 55 d8 03 d1 03 15 90 01 04 8b 45 dc 2b d0 03 15 90 01 04 03 15 90 01 04 8b 4d e0 2b d1 8b 45 e4 2b d0 8b 4d 0c 8b 45 e8 88 04 11 e9 90 00 } //01 00 
		$a_81_1 = {43 51 56 46 51 4e 45 5e 78 30 2a 3c 26 43 4b 73 75 39 35 28 50 45 57 63 4b 33 55 74 65 46 28 46 4c 58 3c 79 4c 45 6c 3f 57 38 4f 25 6a 26 23 32 43 63 25 4e 56 38 46 31 50 43 67 24 63 } //00 00  CQVFQNE^x0*<&CKsu95(PEWcK3UteF(FLX<yLEl?W8O%j&#2Cc%NV8F1PCg$c
	condition:
		any of ($a_*)
 
}