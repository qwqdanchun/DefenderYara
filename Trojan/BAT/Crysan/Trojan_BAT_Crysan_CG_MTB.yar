
rule Trojan_BAT_Crysan_CG_MTB{
	meta:
		description = "Trojan:BAT/Crysan.CG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 00 78 00 74 00 2e 00 65 00 73 00 72 00 65 00 76 00 65 00 72 00 34 00 36 00 65 00 73 00 61 00 62 00 6c 00 6c 00 64 00 2f 00 6e 00 69 00 61 00 6d 00 2f 00 77 00 65 00 6e 00 2f 00 63 00 78 00 7a 00 65 00 77 00 35 00 63 00 78 00 7a 00 2f 00 6d 00 6f 00 63 00 2e 00 74 00 6e 00 65 00 74 00 6e 00 6f 00 63 00 72 00 65 00 73 00 75 00 62 00 75 00 68 00 74 00 69 00 67 00 2e 00 77 00 61 00 72 00 2f 00 2f 00 3a 00 73 00 70 00 74 00 74 00 68 00 } //01 00  txt.esrever46esablld/niam/wen/cxzew5cxz/moc.tnetnocresubuhtig.war//:sptth
		$a_01_1 = {43 00 72 00 79 00 70 00 74 00 65 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  Crypted.exe
		$a_01_2 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_01_3 = {53 74 72 52 65 76 65 72 73 65 } //01 00  StrReverse
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_5 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}