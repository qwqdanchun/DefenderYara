
rule Trojan_BAT_SpySnake_MAS_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.MAS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 9f b6 2b 09 1e 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 5c 01 00 00 95 01 00 00 ed 05 } //01 00 
		$a_01_1 = {44 79 6e 61 6d 69 63 49 6e 76 6f 6b 65 } //01 00  DynamicInvoke
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_3 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  TransformFinalBlock
		$a_01_4 = {63 75 72 72 65 6e 74 50 6f 73 69 74 69 6f 6e } //01 00  currentPosition
		$a_01_5 = {66 75 6c 6c 79 54 72 75 73 74 65 64 } //01 00  fullyTrusted
		$a_01_6 = {43 6f 64 65 41 63 63 65 73 73 50 65 72 6d 69 73 73 69 6f 6e } //00 00  CodeAccessPermission
	condition:
		any of ($a_*)
 
}