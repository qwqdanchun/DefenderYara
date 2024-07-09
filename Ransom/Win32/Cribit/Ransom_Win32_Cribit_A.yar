
rule Ransom_Win32_Cribit_A{
	meta:
		description = "Ransom:Win32/Cribit.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_00_0 = {42 69 74 63 6f 6d 69 6e 74 00 00 00 ff ff ff ff 0c 00 00 00 62 69 74 63 72 79 70 74 2e 63 63 77 } //5
		$a_02_1 = {69 6e 66 65 63 74 65 64 20 62 79 20 42 69 74 43 72 79 70 74 20 76 [0-01] 2e [0-01] 20 63 72 79 70 74 6f 76 69 72 75 73 2e 00 } //5
		$a_00_2 = {6d 6f 72 65 20 69 6e 66 6f 72 6d 61 74 69 6f 6e 20 79 6f 75 20 73 68 6f 75 6c 64 20 66 69 6e 64 20 74 78 74 20 66 69 6c 65 20 6e 61 6d 65 64 20 42 69 74 63 72 79 70 74 2e 74 78 74 20 6f 6e 20 79 6f 75 72 20 68 61 72 64 20 64 72 69 76 65 2e } //5 more information you should find txt file named Bitcrypt.txt on your hard drive.
		$a_00_3 = {63 6d 64 2e 65 78 65 00 2f 4b 20 62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 62 6f 6f 74 73 74 61 74 75 73 70 6f 6c 69 63 79 20 69 67 6e 6f 72 65 61 6c 6c 66 61 69 6c 75 72 65 73 00 } //5
		$a_00_4 = {42 69 74 43 72 79 70 74 2e 62 6d 70 00 } //1
	condition:
		((#a_00_0  & 1)*5+(#a_02_1  & 1)*5+(#a_00_2  & 1)*5+(#a_00_3  & 1)*5+(#a_00_4  & 1)*1) >=6
 
}