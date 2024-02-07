
rule Trojan_BAT_FormBook_MVH_MTB{
	meta:
		description = "Trojan:BAT/FormBook.MVH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {7e 14 00 00 04 73 40 00 00 0a 72 90 01 03 70 6f 90 01 03 0a 74 90 01 03 1b 0a 73 42 00 00 0a 0b 07 72 90 01 03 70 28 90 01 03 06 74 90 01 03 1b 6f 90 01 03 0a 0c 73 44 00 00 0a 0d 09 08 6f 90 01 03 0a 00 09 18 6f 90 01 03 0a 00 09 6f 90 01 03 0a 06 16 06 8e 69 6f 90 01 03 0a 90 00 } //01 00 
		$a_01_1 = {46 00 61 00 62 00 72 00 61 00 6b 00 61 00 } //01 00  Fabraka
		$a_01_2 = {54 00 35 00 41 00 41 00 5a 00 } //01 00  T5AAZ
		$a_01_3 = {43 6f 6d 70 75 74 65 48 61 73 68 } //01 00  ComputeHash
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_5 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //00 00  TransformFinalBlock
	condition:
		any of ($a_*)
 
}