
rule Trojan_Win32_Mansund{
	meta:
		description = "Trojan:Win32/Mansund,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_00_0 = {56 42 35 21 f0 1f 76 62 36 63 68 73 2e 64 6c 6c 00 00 00 00 2a 00 00 00 00 00 00 00 00 00 00 00 00 00 0a 00 04 08 00 00 00 00 00 00 } //1
		$a_02_1 = {2a 00 5c 00 41 00 43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 5c 00 4c 68 62 97 5c 00 90 0f 01 00 00 2e 00 90 0f 01 00 00 90 03 05 00 90 0f 01 00 00 5c 00 6d 00 73 00 5c 00 90 17 03 04 06 08 2f 54 a8 52 2c 7b 00 4e 2a 4e 0d 67 a1 52 2f 54 a8 52 5c 00 e5 5d 0b 7a 31 00 2e 00 76 00 62 00 70 90 00 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*2) >=3
 
}