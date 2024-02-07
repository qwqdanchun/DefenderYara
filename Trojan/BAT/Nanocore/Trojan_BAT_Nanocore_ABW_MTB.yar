
rule Trojan_BAT_Nanocore_ABW_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.ABW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {07 1f 10 8d 90 01 03 01 25 d0 90 01 03 04 28 90 01 03 0a 6f 90 01 03 0a 06 07 6f 90 01 03 0a 17 73 90 01 03 0a 0c 08 02 16 02 8e 69 6f 90 01 03 0a 08 28 90 01 03 06 06 28 90 01 03 06 0d 28 90 01 03 06 09 2a 90 00 } //01 00 
		$a_01_1 = {53 79 6d 6d 65 74 72 69 63 41 6c 67 6f 72 69 74 68 6d } //01 00  SymmetricAlgorithm
		$a_01_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_3 = {54 72 61 6e 73 66 6f 72 6d 42 6c 6f 63 6b } //01 00  TransformBlock
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}