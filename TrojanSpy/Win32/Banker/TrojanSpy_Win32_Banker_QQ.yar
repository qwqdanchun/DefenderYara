
rule TrojanSpy_Win32_Banker_QQ{
	meta:
		description = "TrojanSpy:Win32/Banker.QQ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {5c 62 63 6b 2e 62 63 6b 90 02 20 5c 90 02 10 2e 65 78 65 00 90 00 } //1
		$a_02_1 = {44 61 64 6f 73 20 64 65 20 61 70 6c 69 63 61 74 69 76 6f 73 5c 90 02 10 70 70 6c 69 63 61 74 69 6f 6e 20 44 61 74 61 5c 90 02 10 55 53 45 52 50 52 4f 46 49 4c 45 90 02 10 70 70 44 61 74 61 5c 90 02 10 57 65 62 4d 61 6f 90 00 } //1
		$a_03_2 = {85 db 7c 65 8b 45 90 01 01 c1 e0 90 01 01 03 d8 89 5d 90 01 01 83 c7 90 01 01 83 ff 08 7c 48 83 ef 08 8b cf 90 00 } //1
		$a_03_3 = {85 db 7e 2b be 01 00 00 00 8d 45 90 01 01 8b d7 52 8b 55 90 01 01 8a 54 32 90 01 01 59 2a d1 f6 d2 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_02_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}