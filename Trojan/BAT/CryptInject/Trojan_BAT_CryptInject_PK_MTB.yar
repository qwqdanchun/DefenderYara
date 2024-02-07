
rule Trojan_BAT_CryptInject_PK_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.PK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 08 00 00 0a 00 "
		
	strings :
		$a_81_0 = {39 35 63 36 39 33 37 31 62 39 32 34 36 66 65 33 37 63 33 38 39 38 62 37 64 64 32 30 30 62 63 31 2e 39 35 63 36 39 33 37 31 62 39 32 34 36 66 65 33 37 63 33 38 39 38 62 37 64 64 32 30 30 62 63 31 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //0a 00  95c69371b9246fe37c3898b7dd200bc1.95c69371b9246fe37c3898b7dd200bc1.Resources.resources
		$a_81_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //0a 00  CreateDecryptor
		$a_81_2 = {50 75 62 6c 69 63 4b 65 79 54 6f 6b 65 6e 3d 62 30 33 66 35 66 37 66 31 31 64 35 30 61 33 61 } //02 00  PublicKeyToken=b03f5f7f11d50a3a
		$a_81_3 = {38 32 38 36 64 30 34 36 39 37 34 30 61 33 65 34 39 35 63 66 66 66 34 36 36 39 39 63 37 33 63 34 30 } //02 00  8286d0469740a3e495cfff46699c73c40
		$a_81_4 = {48 61 68 61 50 72 6f 64 75 63 74 69 6f 6e 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  HahaProduction.Properties.Resources
		$a_81_5 = {43 72 79 70 74 6f 43 6f 6e 66 69 67 } //01 00  CryptoConfig
		$a_81_6 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00  get_CurrentDomain
		$a_81_7 = {67 65 74 5f 49 73 42 72 6f 77 73 65 72 48 6f 73 74 65 64 } //00 00  get_IsBrowserHosted
	condition:
		any of ($a_*)
 
}