
rule Ransom_Win32_Rotocrypt_A{
	meta:
		description = "Ransom:Win32/Rotocrypt.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 08 00 00 "
		
	strings :
		$a_03_0 = {6b 00 66 c7 45 ?? 6e 00 66 c7 45 ?? 6c 00 66 c7 45 ?? 2e 00 } //1
		$a_03_1 = {2a 00 66 c7 45 ?? 2e 00 66 c7 45 ?? 2a 00 } //1
		$a_03_2 = {65 00 66 c7 45 ?? 78 00 66 c7 45 ?? 65 00 66 c7 45 ?? 2e 00 } //1
		$a_03_3 = {2e 00 66 c7 45 ?? 65 00 66 c7 45 ?? 6e 00 66 c7 45 ?? 6f 00 66 c7 45 ?? 5a 00 66 c7 45 ?? 3a 00 } //1
		$a_01_4 = {c6 45 f8 61 c6 45 f7 74 c6 45 f6 61 c6 45 f5 64 c6 45 f4 2e } //1
		$a_03_5 = {6e 00 66 c7 45 ?? 65 00 66 c7 45 ?? 70 00 66 c7 45 ?? 6f 00 } //1
		$a_03_6 = {57 ff 24 85 ?? ?? ?? ?? 81 7c 24 2c 60 02 00 00 75 10 81 be ?? ?? 00 00 be ba fe ca 0f 84 ?? ?? 00 00 e8 ?? ?? ff ff } //4
		$a_03_7 = {6a 40 68 00 10 00 00 68 40 9c 00 00 57 ff 96 ?? ?? 00 00 89 46 1c e8 ?? ?? ff ff } //4
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*4+(#a_03_7  & 1)*4) >=10
 
}