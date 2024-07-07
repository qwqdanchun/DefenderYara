
rule Trojan_Win32_Banker_U{
	meta:
		description = "Trojan:Win32/Banker.U,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {50 68 02 00 00 00 bb 6c 02 00 00 e8 90 01 04 83 c4 1c 8b 5d f0 85 db 74 90 01 01 53 e8 90 01 04 83 c4 04 68 04 00 00 80 6a 00 68 3e 99 40 00 68 01 00 00 00 bb 98 01 00 00 90 00 } //1
		$a_02_1 = {6b 6f 72 65 61 63 69 74 69 64 69 72 65 63 74 2e 63 69 74 69 67 72 6f 75 70 2e 63 6f 4d 0d 0a 90 02 03 2e 90 02 03 2e 90 02 03 2e 90 02 03 20 6b 42 73 74 61 72 2e 63 6f 4d 0d 0a 90 02 03 2e 90 02 03 2e 90 02 03 2e 90 02 03 20 77 77 77 2e 6b 42 73 74 61 72 2e 63 6f 4d 90 00 } //1
		$a_02_2 = {4f 70 65 6e 2e 6b 42 73 74 61 72 2e 63 6f 4d 0d 0a 90 02 03 2e 90 02 03 2e 90 02 03 2e 90 02 03 20 6f 6d 6f 6e 65 79 2e 6b 42 73 74 61 72 2e 63 6f 4d 0d 0a 90 02 03 2e 90 02 03 2e 90 02 03 2e 90 02 03 20 6f 42 61 6e 6b 2e 6b 42 73 74 61 72 2e 63 6f 4d 90 00 } //1
		$a_00_3 = {5c 2e 2e 2e 2e 5c 00 5c 2e 2e 2e 2e 5c 54 65 6d 70 6f 72 61 72 79 46 69 6c 65 00 5c 54 65 6d 70 6f 72 61 72 79 46 69 6c 65 } //1
		$a_01_4 = {49 8d 44 11 ff 3b c2 72 25 8a 08 80 f9 20 74 0a 80 f9 a1 75 15 38 48 ff 75 10 84 c9 7d 05 83 e8 02 eb 01 48 3b c2 73 e1 eb 04 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}