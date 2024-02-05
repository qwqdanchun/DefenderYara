
rule Ransom_Win32_Dircrypt_C{
	meta:
		description = "Ransom:Win32/Dircrypt.C,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {49 00 44 00 00 00 00 00 70 61 79 69 6e 66 6f 00 62 6f 74 69 64 00 00 00 63 6d 64 00 63 63 00 00 6c 69 64 00 6c 64 00 00 63 72 00 00 } //01 00 
		$a_01_1 = {4c 00 61 00 6e 00 64 00 69 00 6e 00 67 00 00 00 50 00 65 00 72 00 73 00 6f 00 6e 00 61 00 6c 00 00 00 00 00 4c 00 49 00 44 00 00 00 50 00 61 00 79 00 49 00 6e 00 66 00 6f 00 00 00 50 00 65 00 72 00 69 00 6f 00 64 00 44 00 69 00 73 00 61 00 62 00 65 00 64 00 00 00 4c 00 6f 00 63 00 6b 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 } //01 00 
		$a_01_2 = {44 00 69 00 72 00 74 00 79 00 50 00 61 00 79 00 43 00 6f 00 64 00 65 00 00 00 00 00 29 00 3b 00 00 00 00 00 53 00 65 00 74 00 53 00 74 00 61 00 74 00 75 00 73 00 28 00 00 00 00 00 41 00 74 00 6c 00 41 00 78 00 57 00 69 00 6e 00 00 00 00 00 44 00 69 00 72 00 74 00 79 00 50 00 61 00 79 00 42 00 75 00 74 00 74 00 6f 00 6e 00 00 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}