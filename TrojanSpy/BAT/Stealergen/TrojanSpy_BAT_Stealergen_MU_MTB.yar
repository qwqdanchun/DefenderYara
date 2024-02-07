
rule TrojanSpy_BAT_Stealergen_MU_MTB{
	meta:
		description = "TrojanSpy:BAT/Stealergen.MU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {8e 69 1e 5a 6f 90 01 03 0a 00 07 02 7b 90 01 03 04 6f 90 01 03 0a 00 07 02 7b 90 01 03 04 8e 69 1e 5a 6f 90 01 03 0a 00 07 02 7b 90 01 03 04 6f 90 01 03 0a 00 07 6f 90 01 03 0a 0c 00 03 73 90 01 03 0a 0d 00 09 08 16 73 90 01 03 0a 13 04 00 03 8e 69 8d 90 01 03 01 13 05 11 04 11 05 16 03 8e 69 6f 90 01 03 0a 13 06 11 05 11 06 90 00 } //01 00 
		$a_01_1 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_2 = {43 44 38 45 33 30 36 43 45 } //01 00  CD8E306CE
		$a_01_3 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_5 = {67 65 74 5f 4b 65 79 42 6f 61 72 64 } //01 00  get_KeyBoard
		$a_01_6 = {44 65 62 75 67 } //01 00  Debug
		$a_01_7 = {67 65 74 5f 43 61 70 73 4c 6f 63 6b } //01 00  get_CapsLock
		$a_01_8 = {73 65 74 5f 4b 65 79 } //00 00  set_Key
	condition:
		any of ($a_*)
 
}