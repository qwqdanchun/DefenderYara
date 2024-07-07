
rule Trojan_Win32_CoinMiner_PD_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.PD!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {50 6a 00 6a 00 68 04 00 00 08 6a 00 6a 00 6a 00 6a 00 68 90 01 03 00 ff 15 90 01 03 00 8b 35 90 01 03 00 b8 4d 5a 00 00 66 39 05 90 01 03 00 90 00 } //1
		$a_03_1 = {8b 44 31 14 6a 00 ff 74 31 10 05 90 01 03 00 50 8b 44 31 0c 03 85 90 01 03 ff 50 ff b5 90 01 03 ff ff 15 90 01 03 00 0f b7 87 90 01 03 00 8d 76 28 43 3b d8 72 bf 90 00 } //1
		$a_01_2 = {73 63 68 74 61 73 6b 73 20 2f 63 72 65 61 74 65 20 2f 74 6e } //1 schtasks /create /tn
		$a_01_3 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 53 79 73 74 65 6d 33 32 5c 61 74 74 72 69 62 2e 65 78 65 } //1 C:\Windows\System32\attrib.exe
		$a_00_4 = {54 61 73 6b 6d 67 72 2e 65 78 65 00 74 61 73 6b 6d 67 72 2e 65 78 65 00 50 72 6f 63 65 73 73 48 61 63 6b 65 72 2e 65 78 65 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}