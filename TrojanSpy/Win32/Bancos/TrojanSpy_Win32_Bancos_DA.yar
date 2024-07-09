
rule TrojanSpy_Win32_Bancos_DA{
	meta:
		description = "TrojanSpy:Win32/Bancos.DA,SIGNATURE_TYPE_PEHSTR_EXT,39 00 39 00 0c 00 00 "
		
	strings :
		$a_00_0 = {49 6e 74 65 72 6e 65 74 43 6f 6e 6e 65 63 74 41 } //10 InternetConnectA
		$a_00_1 = {46 69 6c 65 54 69 6d 65 54 6f 44 6f 73 44 61 74 65 54 69 6d 65 } //10 FileTimeToDosDateTime
		$a_00_2 = {6d 61 69 6c 2e 74 65 72 72 61 2e 63 6f 6d 2e 62 72 } //10 mail.terra.com.br
		$a_00_3 = {00 5f 70 61 73 73 77 64 00 } //10
		$a_00_4 = {00 65 6d 61 69 6c 00 } //10
		$a_00_5 = {52 65 64 69 72 65 63 74 69 6e 67 2e 2e 2e 2e } //2 Redirecting....
		$a_00_6 = {00 57 69 6e 64 6f 77 73 20 4c 69 76 65 20 48 6f 6a 65 00 } //2
		$a_00_7 = {6f 66 66 63 6f 6e 65 63 74 69 6f 6e } //2 offconection
		$a_00_8 = {54 58 54 5f 4d 53 4e 20 41 53 20 54 45 4d 5f 4d 53 4e 20 46 52 4f 4d } //2 TXT_MSN AS TEM_MSN FROM
		$a_02_9 = {57 69 6e 64 6f 77 73 20 4c 69 76 65 20 4d 65 73 73 65 6e 67 65 72 00 00 57 69 6e 64 6f 77 73 20 4c 69 76 65 20 4d 65 73 73 65 6e 67 65 72 20 [0-09] 25 43 53 00 43 3a 5c 57 69 6e 64 6f 77 73 5c 6c 6f 67 2e 74 78 74 } //1
		$a_02_10 = {63 3a 5c 77 69 6e 64 6f 77 73 5c 6c 6f 67 2e 74 78 74 [0-0a] 5c 6c 6f 67 2e 74 78 74 } //1
		$a_02_11 = {3a 5c 44 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 53 65 74 74 69 6e 67 73 5c [0-0c] 5c 43 6f 6e 74 61 63 74 73 5c [0-0c] 44 65 73 6b 74 6f 70 2e 69 6e 69 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*2+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*2+(#a_02_9  & 1)*1+(#a_02_10  & 1)*1+(#a_02_11  & 1)*1) >=57
 
}