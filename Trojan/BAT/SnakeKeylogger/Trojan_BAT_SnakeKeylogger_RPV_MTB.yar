
rule Trojan_BAT_SnakeKeylogger_RPV_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 00 41 00 42 00 42 00 48 00 48 00 35 00 43 00 35 00 34 00 37 00 34 00 47 00 47 00 4f 00 37 00 53 00 37 00 38 00 47 00 47 00 5a 00 38 00 34 00 4f 00 31 00 51 00 47 00 35 00 38 00 50 00 34 00 35 00 35 00 48 00 4f 00 48 00 38 00 44 00 47 00 35 00 5a 00 43 00 41 00 38 00 52 00 43 00 52 00 45 00 39 00 } //01 00  HABBHH5C5474GGO7S78GGZ84O1QG58P455HOH8DG5ZCA8RCRE9
		$a_01_1 = {4d 00 4f 00 4e 00 5f 00 54 00 45 00 58 00 54 00 45 00 5f 00 41 00 5f 00 4d 00 4f 00 44 00 49 00 46 00 49 00 45 00 52 00 } //01 00  MON_TEXTE_A_MODIFIER
		$a_01_2 = {45 00 6e 00 74 00 72 00 79 00 50 00 6f 00 69 00 6e 00 74 00 } //01 00  EntryPoint
		$a_01_3 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //01 00  Invoke
		$a_01_4 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_5 = {44 65 63 72 79 70 74 5f 61 65 73 } //01 00  Decrypt_aes
		$a_01_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_7 = {43 61 6c 6c 42 79 4e 61 6d 65 } //01 00  CallByName
		$a_01_8 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  MD5CryptoServiceProvider
		$a_01_9 = {47 65 74 53 74 72 69 6e 67 } //01 00  GetString
		$a_01_10 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //00 00  TransformFinalBlock
	condition:
		any of ($a_*)
 
}