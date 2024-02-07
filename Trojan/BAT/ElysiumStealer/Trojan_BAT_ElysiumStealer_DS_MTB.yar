
rule Trojan_BAT_ElysiumStealer_DS_MTB{
	meta:
		description = "Trojan:BAT/ElysiumStealer.DS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 09 00 00 14 00 "
		
	strings :
		$a_81_0 = {48 6f 6c 64 52 75 66 74 53 66 74 } //01 00  HoldRuftSft
		$a_81_1 = {46 49 4c 45 54 59 50 45 5f 46 49 4c 45 5f 49 43 4f 4e 5f 31 38 37 37 } //01 00  FILETYPE_FILE_ICON_1877
		$a_81_2 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_81_3 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  ToBase64String
		$a_81_4 = {74 65 73 74 65 72 } //01 00  tester
		$a_81_5 = {44 65 63 6f 6d 70 72 65 73 73 } //01 00  Decompress
		$a_81_6 = {44 65 63 72 79 70 74 } //01 00  Decrypt
		$a_81_7 = {52 65 76 65 72 73 65 44 65 63 6f 64 65 } //01 00  ReverseDecode
		$a_81_8 = {65 73 68 65 6c 6f 6e } //00 00  eshelon
	condition:
		any of ($a_*)
 
}