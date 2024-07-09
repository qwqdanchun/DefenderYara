
rule TrojanSpy_Win32_Banker_RA{
	meta:
		description = "TrojanSpy:Win32/Banker.RA,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 07 00 00 "
		
	strings :
		$a_01_0 = {8b 45 f8 8b 55 e4 0f b6 44 10 ff 03 c7 b9 ff 00 00 00 99 f7 f9 8b da 3b 75 f0 7d 03 46 eb 05 be 01 00 00 00 8b 45 e8 0f b6 44 30 ff 33 d8 8d 45 cc 50 89 5d d0 c6 45 d4 00 } //10
		$a_00_1 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 } //10 SOFTWARE\Borland\Delphi
		$a_02_2 = {57 69 64 74 68 [0-06] 48 65 69 67 68 74 [0-06] 43 61 70 74 69 6f 6e [0-18] 49 6e 74 65 72 6e 65 74 20 42 61 6e 6b 69 6e 67 } //2
		$a_00_3 = {43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 00 00 00 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //2
		$a_00_4 = {49 6e 74 65 72 6e 65 74 43 6f 6e 6e 65 63 74 41 } //1 InternetConnectA
		$a_02_5 = {4c 6f 67 69 6e 50 72 6f 6d 70 74 [0-3a] 50 72 6f 76 69 64 65 72 } //1
		$a_00_6 = {65 73 20 64 61 20 49 6e 74 65 72 6e 65 74 2e 2e 2e } //1 es da Internet...
	condition:
		((#a_01_0  & 1)*10+(#a_00_1  & 1)*10+(#a_02_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*1+(#a_02_5  & 1)*1+(#a_00_6  & 1)*1) >=23
 
}