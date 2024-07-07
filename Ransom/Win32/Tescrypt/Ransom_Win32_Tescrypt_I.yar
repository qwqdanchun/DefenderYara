
rule Ransom_Win32_Tescrypt_I{
	meta:
		description = "Ransom:Win32/Tescrypt.I,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0a 00 00 "
		
	strings :
		$a_80_0 = {00 5f 5f 73 79 73 5f 32 33 34 32 33 38 32 33 33 32 39 35 00 } //  2
		$a_80_1 = {00 53 6f 66 74 77 61 72 65 5c 78 78 78 73 79 73 5c 00 } //  2
		$a_80_2 = {00 45 6e 61 62 6c 65 4c 69 6e 6b 65 64 43 6f 6e 6e 65 63 74 69 6f 6e 73 00 } //  1
		$a_80_3 = {25 73 5c 25 73 2b 25 73 2e } //%s\%s+%s.  1
		$a_80_4 = {25 73 5c 68 65 6c 70 5f 72 65 63 6f 76 65 72 5f 69 6e 73 74 72 75 63 74 69 6f 6e 73 } //%s\help_recover_instructions  1
		$a_80_5 = {5f 48 5f 65 5f 6c 5f 70 5f 52 45 43 4f 56 45 52 5f 49 4e 53 54 52 55 43 54 49 4f 4e 53 } //_H_e_l_p_RECOVER_INSTRUCTIONS  1
		$a_00_6 = {21 21 21 20 59 6f 75 72 20 70 65 72 73 6f 6e 61 6c 20 69 64 65 6e 74 69 66 69 63 61 74 69 6f 6e 20 49 44 3a 20 25 53 } //1 !!! Your personal identification ID: %S
		$a_00_7 = {2f 73 65 74 20 7b 63 75 72 72 65 6e 74 7d 20 62 6f 6f 74 73 74 61 74 75 73 70 6f 6c 69 63 79 20 49 67 6e 6f 72 65 41 6c 6c 46 61 69 6c 75 72 65 73 00 } //1 猯瑥笠畣牲湥絴戠潯獴慴畴灳汯捩⁹杉潮敲汁䙬楡畬敲s
		$a_02_8 = {2f 73 65 74 20 7b 63 75 72 72 65 6e 74 7d 20 90 02 20 20 6f 66 66 00 90 00 } //1
		$a_02_9 = {73 68 61 64 6f 77 73 90 02 10 2f 61 6c 6c 90 02 10 2f 51 75 69 65 74 90 00 } //1
	condition:
		((#a_80_0  & 1)*2+(#a_80_1  & 1)*2+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_02_8  & 1)*1+(#a_02_9  & 1)*1) >=5
 
}