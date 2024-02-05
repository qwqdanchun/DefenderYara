
rule Trojan_Win32_VB_UF{
	meta:
		description = "Trojan:Win32/VB.UF,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 20 00 25 00 31 00 20 00 68 00 25 00 74 00 25 00 74 00 25 00 70 00 25 00 3a 00 25 00 2f 00 25 00 2f 00 25 00 90 02 20 2e 00 25 00 63 00 25 00 6e 00 25 00 90 00 } //01 00 
		$a_00_1 = {52 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 53 00 68 00 65 00 6c 00 6c 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 2c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5f 00 52 00 75 00 6e 00 44 00 4c 00 4c 00 20 00 49 00 6e 00 65 00 74 00 63 00 70 00 6c 00 2e 00 63 00 70 00 6c 00 } //01 00 
		$a_00_2 = {43 00 4c 00 53 00 49 00 44 00 5c 00 7b 00 33 00 44 00 33 00 44 00 42 00 44 00 44 00 32 00 2d 00 44 00 44 00 34 00 44 00 2d 00 42 00 31 00 35 00 37 00 2d 00 34 00 32 00 36 00 34 00 2d 00 30 00 42 00 30 00 44 00 34 00 44 00 44 00 36 00 42 00 44 00 34 00 35 00 7d 00 5c 00 53 00 68 00 65 00 6c 00 6c 00 5c 00 4f 00 70 00 65 00 6e 00 } //01 00 
		$a_02_3 = {43 00 72 00 65 00 61 00 74 00 65 00 53 00 68 00 6f 00 72 00 74 00 63 00 75 00 74 00 90 02 08 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 4d 00 75 00 2e 00 64 00 6c 00 6c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}