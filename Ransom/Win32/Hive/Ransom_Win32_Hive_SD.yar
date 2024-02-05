
rule Ransom_Win32_Hive_SD{
	meta:
		description = "Ransom:Win32/Hive.SD,SIGNATURE_TYPE_CMDHSTR_EXT,65 00 65 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 } //64 00 
		$a_02_1 = {5c 00 6e 00 65 00 74 00 6c 00 6f 00 67 00 6f 00 6e 00 5c 00 90 02 10 2e 00 65 00 78 00 65 00 20 00 2d 00 75 00 90 00 } //64 00 
		$a_02_2 = {5c 00 6e 00 65 00 74 00 6c 00 6f 00 67 00 6f 00 6e 00 5c 00 90 02 10 2e 00 64 00 6c 00 6c 00 90 02 10 2d 00 75 00 90 02 30 3a 00 90 00 } //64 00 
		$a_02_3 = {5c 00 73 00 68 00 61 00 72 00 65 00 24 00 5c 00 90 02 10 2e 00 65 00 78 00 65 00 20 00 2d 00 75 00 90 00 } //64 00 
		$a_02_4 = {5c 00 73 00 68 00 61 00 72 00 65 00 24 00 5c 00 90 02 10 2e 00 64 00 6c 00 6c 00 90 02 10 2d 00 75 00 90 02 30 3a 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}