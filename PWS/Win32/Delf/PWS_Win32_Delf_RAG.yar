
rule PWS_Win32_Delf_RAG{
	meta:
		description = "PWS:Win32/Delf.RAG,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_02_0 = {55 8b ec b9 5c 00 00 00 6a 00 6a 00 49 75 f9 53 56 57 89 45 fc 33 c0 55 68 90 01 04 64 ff 30 64 89 20 33 d2 55 68 90 01 04 64 ff 32 64 89 22 8d 45 e0 50 e8 90 01 04 ff 75 e4 ff 75 e0 e8 90 01 04 8b d8 68 ff 00 00 00 8d 85 a0 fe ff ff 50 53 e8 90 01 04 8d 85 9c fe ff ff 8d 95 a0 fe ff ff b9 00 01 00 00 e8 90 01 04 8b 85 9c fe ff ff ba 90 01 04 e8 90 01 04 0f 85 a9 0d 00 00 8d 55 f0 8b c3 e8 90 01 04 8d 85 98 fe ff ff e8 90 01 04 50 8b 45 f0 50 8b 00 ff 50 48 e8 90 01 04 8b 95 98 fe ff ff 8d 45 f4 b9 90 01 04 e8 90 01 04 8d 45 ec e8 90 01 04 50 8b 45 f4 50 8b 00 ff 50 20 e8 90 01 04 8d 85 94 fe ff ff e8 90 01 04 50 8d 85 84 fe ff ff 90 00 } //1
		$a_01_1 = {49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5f 53 65 72 76 65 72 } //1 Internet Explorer_Server
		$a_01_2 = {69 6e 70 75 74 } //1 input
		$a_01_3 = {70 61 73 73 77 6f 72 64 } //1 password
		$a_01_4 = {69 65 6c 6f 67 } //1 ielog
		$a_01_5 = {52 00 65 00 73 00 65 00 6c 00 6c 00 65 00 72 00 49 00 44 00 } //1 ResellerID
		$a_01_6 = {45 00 53 00 42 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //1 ESBPassword
		$a_01_7 = {53 00 61 00 6c 00 65 00 72 00 49 00 44 00 } //1 SalerID
		$a_01_8 = {45 00 47 00 52 00 6e 00 64 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //1 EGRndPassword
	condition:
		((#a_02_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}