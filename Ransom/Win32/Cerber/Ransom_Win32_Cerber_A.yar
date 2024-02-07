
rule Ransom_Win32_Cerber_A{
	meta:
		description = "Ransom:Win32/Cerber.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 72 79 70 74 45 6e 63 72 79 70 74 } //01 00  CryptEncrypt
		$a_00_1 = {43 72 79 70 74 49 6d 70 6f 72 74 50 75 62 6c 69 63 4b 65 79 49 6e 66 6f } //03 00  CryptImportPublicKeyInfo
		$a_00_2 = {4b 00 65 00 79 00 73 00 69 00 7a 00 65 00 3a 00 20 00 25 00 64 00 2c 00 20 00 45 00 6e 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 74 00 69 00 6d 00 65 00 3a 00 20 00 25 00 64 00 } //02 00  Keysize: %d, Encryption time: %d
		$a_00_3 = {54 00 6f 00 74 00 61 00 6c 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 66 00 6f 00 75 00 6e 00 64 00 3a 00 20 00 25 00 64 00 2c 00 20 00 46 00 69 00 6c 00 65 00 73 00 20 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 3a 00 20 00 25 00 64 00 } //02 00  Total files found: %d, Files crypted: %d
		$a_00_4 = {63 65 72 62 65 72 00 } //03 00 
		$a_03_5 = {33 d2 f7 f7 50 ff 35 90 01 04 8d 90 02 05 68 90 01 04 50 ff 15 90 01 04 83 c4 18 6a 40 90 00 } //00 00 
		$a_00_6 = {78 6f 01 00 08 } //00 08 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Cerber_A_2{
	meta:
		description = "Ransom:Win32/Cerber.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0a 00 00 05 00 "
		
	strings :
		$a_00_0 = {63 65 72 62 65 72 00 } //01 00 
		$a_00_1 = {63 72 79 70 74 69 6d 70 6f 72 74 70 75 62 6c 69 63 6b 65 79 69 6e 66 6f } //01 00  cryptimportpublickeyinfo
		$a_00_2 = {63 72 79 70 74 65 6e 63 72 79 70 74 } //02 00  cryptencrypt
		$a_01_3 = {0f b6 f0 83 fe 66 7f 30 74 25 83 fe 26 74 17 83 fe 2e 74 12 83 fe 36 74 0d 83 fe 3e 74 08 83 c6 9c 83 fe 01 } //02 00 
		$a_00_4 = {c1 e8 10 33 c2 69 c0 6b ca eb 85 8b c8 c1 e9 0d 33 c8 } //02 00 
		$a_80_5 = {22 73 65 72 76 65 72 73 22 3a 7b 22 73 74 61 74 69 73 74 69 63 73 22 3a 7b 22 64 61 74 61 5f 66 69 6e 69 73 68 22 3a 22 7b 4d 44 35 5f 4b 45 59 7d 22 } //"servers":{"statistics":{"data_finish":"{MD5_KEY}"  03 00 
		$a_80_6 = {7b 4d 44 35 5f 4b 45 59 7d 7b 50 41 52 54 4e 45 52 5f 49 44 7d 7b 4f 53 7d 7b 49 53 5f 58 36 34 7d 7b 49 53 5f 41 44 4d 49 4e 7d 7b 43 4f 55 4e 54 5f 46 49 4c 45 53 7d 7b 53 54 4f 50 5f 52 45 41 53 4f 4e 7d } //{MD5_KEY}{PARTNER_ID}{OS}{IS_X64}{IS_ADMIN}{COUNT_FILES}{STOP_REASON}  01 00 
		$a_80_7 = {31 2e 20 20 68 74 74 70 3a 2f 2f 7b 54 4f 52 7d 2e 7b 53 49 54 45 5f 31 7d 2f 7b 50 43 5f 49 44 7d } //1.  http://{TOR}.{SITE_1}/{PC_ID}  02 00 
		$a_03_8 = {56 68 05 30 00 00 6a 04 ff 15 90 01 04 6a 04 57 56 ff 15 90 01 04 57 68 90 01 04 6a 4f 68 90 01 04 e8 90 00 } //fe ff 
		$a_00_9 = {4c 6f 63 61 6c 20 70 72 69 76 61 74 65 2e 6b 65 79 20 66 69 6c 65 20 66 6f 75 6e 64 } //00 00  Local private.key file found
		$a_00_10 = {7e 15 00 00 10 26 } //29 41 
	condition:
		any of ($a_*)
 
}