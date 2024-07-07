
rule Trojan_Win32_Jhee_G{
	meta:
		description = "Trojan:Win32/Jhee.G,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {4e 65 66 6b 68 65 55 } //1 NefkheU
		$a_00_1 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_00_2 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //1 CreateRemoteThread
		$a_02_3 = {74 5a 6a 00 57 8b 4d 0c 51 56 53 ff 15 90 01 03 10 85 c0 74 47 68 90 01 03 10 68 90 01 03 10 ff 15 90 01 03 10 50 ff 15 90 01 03 10 89 45 90 01 01 85 c0 74 29 6a 00 6a 00 56 50 6a 00 6a 00 53 ff 15 90 01 03 10 8b f8 89 7d 90 01 01 85 ff 74 12 6a ff 57 ff 15 90 01 03 10 c6 45 90 01 02 eb 03 90 00 } //1
		$a_03_4 = {68 d0 07 00 00 ff d6 8d 54 24 08 52 57 e8 90 01 03 ff 83 c4 08 85 c0 74 e7 5e 90 00 } //1
		$a_03_5 = {25 0f 00 00 80 79 05 48 83 c8 f0 40 83 c0 05 85 c0 7e 0c 8b f0 68 90 01 04 ff d7 4e 75 f6 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=5
 
}