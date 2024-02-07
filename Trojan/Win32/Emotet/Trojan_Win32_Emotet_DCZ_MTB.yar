
rule Trojan_Win32_Emotet_DCZ_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DCZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 09 00 00 08 00 "
		
	strings :
		$a_02_0 = {6a 00 6a 40 68 00 30 00 00 68 e0 07 00 00 2d e0 07 00 00 6a 00 55 89 44 24 90 01 01 ff d3 8b 4c 24 90 01 01 8b 54 24 90 01 01 03 d1 68 e0 07 00 00 52 50 89 44 24 2c ff d7 8b 44 24 90 01 01 83 c4 0c 6a 00 6a 40 68 00 30 00 00 50 6a 00 55 ff d3 90 00 } //01 00 
		$a_00_1 = {65 47 4e 6b 5a 67 3d 00 66 67 64 62 76 74 } //01 00  䝥歎杚=杦扤瑶
		$a_01_2 = {6d 00 65 00 6d 00 63 00 70 00 79 00 68 00 49 00 6e 00 } //01 00  memcpyhIn
		$a_01_3 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 78 00 63 00 61 00 64 00 7a 00 73 00 64 00 58 00 7a 00 73 00 64 00 65 00 53 00 71 00 66 00 2e 00 64 00 6c 00 6c 00 } //01 00  C:\ProgramData\xcadzsdXzsdeSqf.dll
		$a_01_4 = {43 00 72 00 79 00 70 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 54 00 6f 00 42 00 69 00 6e 00 61 00 72 00 79 00 41 00 75 00 } //01 00  CryptStringToBinaryAu
		$a_01_5 = {46 00 69 00 6e 00 64 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 41 00 58 00 } //01 00  FindResourceAX
		$a_01_6 = {4c 00 6f 00 61 00 64 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 39 00 6e 00 } //01 00  LoadResource9n
		$a_01_7 = {43 00 6f 00 70 00 79 00 46 00 69 00 6c 00 65 00 57 00 3f 00 } //01 00  CopyFileW?
		$a_01_8 = {53 00 68 00 65 00 6c 00 6c 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 57 00 75 00 } //00 00  ShellExecuteWu
	condition:
		any of ($a_*)
 
}