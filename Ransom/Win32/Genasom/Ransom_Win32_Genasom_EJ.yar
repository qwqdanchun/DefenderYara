
rule Ransom_Win32_Genasom_EJ{
	meta:
		description = "Ransom:Win32/Genasom.EJ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 05 00 00 "
		
	strings :
		$a_03_0 = {c7 06 53 41 46 5f 8d 85 90 01 02 ff ff 50 e8 90 01 04 8d 85 90 01 02 ff ff 50 8d 45 90 01 01 50 e8 90 01 04 8d 45 90 01 01 50 6a 00 6a 00 e8 90 00 } //2
		$a_00_1 = {25 73 5c 49 64 65 6e 74 69 74 69 65 73 5c 25 73 5c 73 76 67 68 6f 73 74 2e 65 78 65 } //1 %s\Identities\%s\svghost.exe
		$a_03_2 = {6a 00 68 00 f7 04 84 6a 00 6a 00 68 90 01 04 ff 75 90 01 01 68 90 01 04 ff b5 90 01 04 e8 90 00 } //1
		$a_00_3 = {42 00 65 00 7a 00 61 00 68 00 6c 00 65 00 6e 00 20 00 75 00 6e 00 64 00 20 00 72 00 75 00 6e 00 74 00 65 00 72 00 6c 00 61 00 64 00 65 00 6e 00 00 00 } //1
		$a_03_4 = {6a 09 6a 01 6a 90 01 01 ff 75 08 e8 90 01 04 6a 90 03 01 01 73 1b 6a 01 6a 90 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1+(#a_00_3  & 1)*1+(#a_03_4  & 1)*1) >=2
 
}