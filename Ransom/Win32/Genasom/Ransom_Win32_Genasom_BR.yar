
rule Ransom_Win32_Genasom_BR{
	meta:
		description = "Ransom:Win32/Genasom.BR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 73 74 61 72 74 69 6e 67 70 00 } //01 00 
		$a_01_1 = {6f 62 6a 5f 53 54 41 54 49 43 00 } //01 00 
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 53 79 73 74 65 6d 5c 44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 00 } //01 00 
		$a_03_3 = {4c 42 6f 6d 65 00 00 90 01 11 4c 42 6f 6d 65 00 00 90 01 11 4c 42 6f 6d 65 00 00 90 00 } //01 00 
		$a_03_4 = {0f ba f0 1f 73 09 83 e0 7f 50 e8 90 01 02 ff ff c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}