
rule Ransom_Win32_SporaCrypt_PA_MTB{
	meta:
		description = "Ransom:Win32/SporaCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 44 00 65 00 6c 00 65 00 74 00 65 00 20 00 53 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 41 00 6c 00 6c 00 20 00 2f 00 51 00 75 00 69 00 65 00 74 00 } //1 vssadmin.exe Delete Shadows /All /Quiet
		$a_03_1 = {5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 52 00 65 00 61 00 64 00 4d 00 65 00 5f 00 4e 00 6f 00 77 00 90 02 10 2e 00 68 00 74 00 61 00 90 00 } //1
		$a_03_2 = {73 63 68 74 61 73 6b 73 20 2f 63 72 65 61 74 65 20 2f 73 63 20 6d 69 6e 75 74 65 20 2f 6d 6f 20 36 20 2f 74 6e 20 22 4d 69 63 72 6f 73 6f 66 74 5f 41 75 74 6f 5f 53 63 68 65 64 75 6c 65 72 22 20 2f 74 72 20 22 27 43 3a 5c 55 73 65 72 73 5c 25 75 73 65 72 6e 61 6d 65 25 5c 41 70 70 44 61 74 61 5c 90 02 15 2e 62 61 74 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}