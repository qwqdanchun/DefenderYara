
rule Trojan_BAT_FormBook_EXJ_MTB{
	meta:
		description = "Trojan:BAT/FormBook.EXJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 00 65 00 61 00 6b 00 54 00 61 00 62 00 6c 00 65 00 2e 00 46 00 69 00 6c 00 65 00 55 00 74 00 69 00 6c 00 73 00 } //01 00  WeakTable.FileUtils
		$a_01_1 = {43 00 61 00 75 00 73 00 61 00 6c 00 69 00 74 00 79 00 53 00 6f 00 75 00 72 00 63 00 65 00 } //01 00  CausalitySource
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_01_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_4 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_01_5 = {00 45 73 63 61 70 65 64 49 52 65 6d 6f 74 69 6e 67 46 6f 72 6d 61 74 74 65 72 00 } //01 00 
		$a_01_6 = {00 53 74 72 69 6e 67 54 79 70 65 49 6e 66 6f 00 } //01 00  匀牴湩呧灹䥥普o
		$a_01_7 = {00 49 6e 70 75 74 42 6c 6f 63 6b 53 69 7a 65 00 } //00 00  䤀灮瑵求捯卫穩e
	condition:
		any of ($a_*)
 
}