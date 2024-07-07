
rule TrojanProxy_Win32_Delf_W{
	meta:
		description = "TrojanProxy:Win32/Delf.W,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_00_0 = {5c 44 61 64 6f 73 20 64 65 20 61 70 6c 69 63 61 74 69 76 6f 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 41 64 64 72 65 73 73 20 42 6f 6f 6b } //3 \Dados de aplicativos\Microsoft\Address Book
		$a_03_1 = {ba 05 00 00 00 e8 90 01 04 8b 45 90 01 01 e8 90 01 04 84 c0 74 90 01 01 ff 35 90 01 04 ff 35 90 01 04 68 90 01 04 8d 45 90 01 01 ba 03 00 00 00 e8 90 01 04 8b 45 90 01 01 e8 90 01 04 84 c0 90 00 } //3
		$a_00_2 = {05 00 00 00 48 45 41 44 20 00 00 00 ff ff ff ff 06 00 00 00 20 48 54 54 50 2f 00 00 ff ff ff ff 04 00 00 00 47 45 54 20 00 00 00 00 ff ff ff ff 05 00 00 00 50 4f 53 54 20 00 00 00 ff ff ff ff 08 00 00 00 4f 50 54 49 4f 4e 53 20 00 00 00 00 ff ff ff ff 06 00 00 00 54 52 41 43 45 20 00 00 ff ff ff ff 04 00 00 00 50 55 54 20 00 00 00 00 ff ff ff ff 08 00 00 00 43 4f 4e 4e 45 43 54 20 } //3
		$a_00_3 = {5b 42 69 6e 61 72 79 20 2d 20 53 69 7a 65 3a 20 25 64 20 62 79 74 65 73 5d 20 28 25 2e 38 78 29 } //1 [Binary - Size: %d bytes] (%.8x)
		$a_02_4 = {4f 70 65 6e 57 61 62 46 69 6c 65 90 02 10 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 90 02 10 4e 6f 6d 65 43 6f 6d 70 75 74 61 64 6f 72 90 02 10 44 65 6c 65 74 65 46 69 6c 65 90 00 } //1
	condition:
		((#a_00_0  & 1)*3+(#a_03_1  & 1)*3+(#a_00_2  & 1)*3+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1) >=10
 
}