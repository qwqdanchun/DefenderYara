
rule Ransom_MSIL_NominatusCrypto_ABG_MTB{
	meta:
		description = "Ransom:MSIL/NominatusCrypto.ABG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 6e 63 72 79 70 74 44 69 72 65 63 74 6f 72 79 } //01 00  encryptDirectory
		$a_01_1 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //01 00  GetFolderPath
		$a_01_2 = {47 65 74 44 72 69 76 65 73 } //01 00  GetDrives
		$a_01_3 = {45 6e 74 65 72 44 65 62 75 67 4d 6f 64 65 } //01 00  EnterDebugMode
		$a_01_4 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  ToBase64String
		$a_01_5 = {47 65 74 46 69 6c 65 73 } //01 00  GetFiles
		$a_01_6 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  autorun.inf
		$a_01_7 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 } //01 00  taskkill
		$a_01_8 = {52 00 4f 00 5a 00 42 00 45 00 48 00 36 00 36 00 36 00 61 00 34 00 65 00 34 00 31 00 33 00 33 00 58 00 4f 00 52 00 65 00 32 00 65 00 61 00 32 00 33 00 31 00 35 00 61 00 31 00 39 00 31 00 36 00 } //01 00  ROZBEH666a4e4133XORe2ea2315a1916
		$a_01_9 = {4e 00 6f 00 6d 00 69 00 6e 00 61 00 74 00 75 00 73 00 43 00 72 00 79 00 70 00 74 00 6f 00 } //00 00  NominatusCrypto
	condition:
		any of ($a_*)
 
}