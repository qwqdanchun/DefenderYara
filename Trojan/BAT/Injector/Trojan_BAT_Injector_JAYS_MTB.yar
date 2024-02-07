
rule Trojan_BAT_Injector_JAYS_MTB{
	meta:
		description = "Trojan:BAT/Injector.JAYS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0e 00 00 02 00 "
		
	strings :
		$a_81_0 = {6e 6a 6e 6b 6a 70 6b 6e 6a 52 53 45 54 72 64 74 69 66 79 55 46 79 75 66 79 74 75 59 54 69 66 79 } //01 00  njnkjpknjRSETrdtifyUFyufytuYTify
		$a_81_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_81_2 = {43 72 79 70 74 44 65 72 69 76 65 4b 65 79 } //02 00  CryptDeriveKey
		$a_81_3 = {4f 4b 50 49 4a 4e 42 49 55 59 47 48 56 46 43 54 59 52 46 44 45 72 64 74 79 72 74 } //01 00  OKPIJNBIUYGHVFCTYRFDErdtyrt
		$a_81_4 = {42 6c 6f 63 6b 43 6f 70 79 } //01 00  BlockCopy
		$a_81_5 = {47 65 74 42 79 74 65 73 } //02 00  GetBytes
		$a_81_6 = {00 62 79 74 65 73 00 } //02 00 
		$a_81_7 = {00 73 75 72 72 6f 67 61 74 65 50 72 6f 63 65 73 73 00 } //01 00  猀牵潲慧整牐捯獥s
		$a_81_8 = {00 76 61 6c 75 65 00 } //01 00 
		$a_81_9 = {00 6b 65 79 00 } //01 00 
		$a_81_10 = {61 6e 74 69 53 61 6e 64 69 65 } //01 00  antiSandie
		$a_81_11 = {54 68 65 44 65 63 } //01 00  TheDec
		$a_81_12 = {4d 61 72 73 68 61 6c 41 73 } //01 00  MarshalAs
		$a_81_13 = {54 6f 53 74 72 69 6e 67 } //00 00  ToString
	condition:
		any of ($a_*)
 
}