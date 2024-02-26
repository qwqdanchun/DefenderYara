
rule Trojan_Win32_RedLineStealer_MEA_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.MEA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 61 00 70 00 69 00 2e 00 69 00 70 00 2e 00 73 00 62 00 2f 00 69 00 70 00 } //01 00  https://api.ip.sb/ip
		$a_01_1 = {42 43 52 59 50 54 5f 41 55 54 48 45 4e 54 49 43 41 54 45 44 5f 43 49 50 48 45 52 5f 4d 4f 44 45 5f 49 4e 46 4f } //01 00  BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
		$a_01_2 = {41 00 6e 00 74 00 69 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 53 00 70 00 79 00 } //01 00  AntiFileSystemSpy
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_4 = {45 6e 63 72 79 70 74 65 64 44 61 74 61 } //01 00  EncryptedData
		$a_01_5 = {44 65 63 72 79 70 74 42 6c 6f 62 } //01 00  DecryptBlob
		$a_01_6 = {44 69 73 63 6f 72 64 } //01 00  Discord
		$a_01_7 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_8 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_9 = {67 65 74 5f 6f 73 5f 63 72 79 70 74 } //01 00  get_os_crypt
		$a_01_10 = {46 72 6f 6d 42 61 73 65 36 34 43 68 61 72 41 72 72 61 79 } //01 00  FromBase64CharArray
		$a_01_11 = {62 00 47 00 68 00 6a 00 59 00 32 00 35 00 70 00 62 00 57 00 6c 00 6e 00 66 00 46 00 4e 00 } //01 00  bGhjY25pbWlnfFN
		$a_01_12 = {61 00 73 00 64 00 6c 00 39 00 34 00 6a 00 6c 00 61 00 6a 00 73 00 64 00 } //00 00  asdl94jlajsd
	condition:
		any of ($a_*)
 
}