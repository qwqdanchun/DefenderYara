
rule Trojan_BAT_Redline_RA_MTB{
	meta:
		description = "Trojan:BAT/Redline.RA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 30 33 69 6c 6c 61 } //01 00  M03illa
		$a_01_1 = {52 6f 73 43 6f 6d 4e 61 64 7a 6f 72 } //01 00  RosComNadzor
		$a_01_2 = {4e 6f 72 64 41 70 70 } //01 00  NordApp
		$a_01_3 = {41 6c 6c 57 61 6c 6c 65 74 73 } //01 00  AllWallets
		$a_01_4 = {44 69 73 63 6f 72 64 } //01 00  Discord
		$a_01_5 = {4f 70 65 6e 56 50 4e } //01 00  OpenVPN
		$a_01_6 = {47 65 63 6b 6f 52 6f 61 6d 69 6e 67 4e 61 6d 65 } //01 00  GeckoRoamingName
		$a_01_7 = {43 68 72 6f 6d 65 47 65 74 52 6f 61 6d 69 6e 67 4e 61 6d 65 } //01 00  ChromeGetRoamingName
		$a_01_8 = {42 43 52 59 50 54 5f 41 55 54 48 45 4e 54 49 43 41 54 45 44 5f 43 49 50 48 45 52 5f 4d 4f 44 45 5f 49 4e 46 4f } //00 00  BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
	condition:
		any of ($a_*)
 
}