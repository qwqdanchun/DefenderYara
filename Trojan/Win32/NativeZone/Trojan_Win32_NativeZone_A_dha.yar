
rule Trojan_Win32_NativeZone_A_dha{
	meta:
		description = "Trojan:Win32/NativeZone.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 05 00 00 "
		
	strings :
		$a_03_0 = {5c 53 79 73 74 65 6d 43 65 72 74 69 66 69 63 61 74 65 73 5c 4c 90 01 01 62 5c 43 65 72 74 50 4b 49 50 72 6f 76 69 64 65 72 2e 64 6c 6c 00 90 00 } //1
		$a_03_1 = {65 67 6c 47 65 74 43 6f 6e 66 69 67 73 90 02 04 25 77 73 25 73 00 90 00 } //1
		$a_03_2 = {25 77 73 25 73 90 02 04 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 25 73 20 25 73 00 00 90 00 } //1
		$a_03_3 = {4e 61 74 69 76 65 43 61 63 68 65 53 76 63 2e 64 6c 6c 90 02 04 5f 63 6f 6e 66 69 67 4e 61 74 69 76 65 43 61 63 68 65 00 90 00 } //1
		$a_03_4 = {68 04 01 00 00 90 01 07 6a 00 50 e8 90 01 0e 50 6a 00 6a 00 6a 1a 6a 00 ff 15 90 01 18 50 90 01 09 68 04 01 00 00 50 e8 90 01 0b 50 ff 15 90 01 04 83 f8 ff 74 90 01 01 a8 10 75 90 01 01 6a 44 90 01 04 0f 57 c0 6a 00 50 90 00 } //2
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*2) >=2
 
}