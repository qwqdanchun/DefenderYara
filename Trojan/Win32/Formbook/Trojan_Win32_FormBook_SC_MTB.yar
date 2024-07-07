
rule Trojan_Win32_FormBook_SC_MTB{
	meta:
		description = "Trojan:Win32/FormBook.SC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0b 00 00 "
		
	strings :
		$a_00_0 = {0f 6e da 85 db 31 f1 85 c0 c3 } //1
		$a_03_1 = {09 0b 66 81 90 02 20 83 c2 04 90 02 20 83 c7 04 66 90 02 05 85 d2 90 00 } //1
		$a_01_2 = {52 00 47 00 65 00 71 00 73 00 32 00 5a 00 56 00 30 00 79 00 63 00 6b 00 52 00 31 00 5a 00 47 00 59 00 6c 00 62 00 31 00 35 00 38 00 } //1 RGeqs2ZV0yckR1ZGYlb158
		$a_01_3 = {63 00 36 00 45 00 55 00 70 00 68 00 30 00 79 00 45 00 67 00 37 00 64 00 50 00 72 00 48 00 70 00 4a 00 76 00 74 00 74 00 47 00 77 00 30 00 66 00 72 00 6a 00 4a 00 33 00 6b 00 59 00 39 00 56 00 42 00 49 00 70 00 5a 00 61 00 59 00 31 00 32 00 34 00 37 00 } //1 c6EUph0yEg7dPrHpJvttGw0frjJ3kY9VBIpZaY1247
		$a_01_4 = {74 00 4f 00 62 00 4c 00 62 00 53 00 47 00 74 00 4a 00 74 00 68 00 4b 00 55 00 39 00 55 00 37 00 65 00 36 00 79 00 59 00 42 00 72 00 71 00 59 00 37 00 4a 00 71 00 46 00 37 00 48 00 31 00 32 00 39 00 } //1 tObLbSGtJthKU9U7e6yYBrqY7JqF7H129
		$a_01_5 = {69 00 35 00 59 00 4e 00 70 00 59 00 5a 00 32 00 33 00 62 00 38 00 75 00 63 00 71 00 43 00 44 00 67 00 31 00 4f 00 6d 00 6e 00 34 00 49 00 4e 00 58 00 57 00 76 00 70 00 6f 00 5a 00 76 00 6b 00 39 00 71 00 67 00 55 00 57 00 45 00 32 00 41 00 32 00 30 00 37 00 } //1 i5YNpYZ23b8ucqCDg1Omn4INXWvpoZvk9qgUWE2A207
		$a_00_6 = {0f 6e da 85 ff 31 f1 3d 08 48 c9 b8 c3 } //2
		$a_00_7 = {0f 6e da 66 85 c0 31 f1 66 81 ff 96 01 c3 } //2
		$a_00_8 = {0f 6e da 66 3d 3a c6 31 f1 66 81 ff fc f8 } //2
		$a_01_9 = {71 00 4c 00 53 00 53 00 52 00 37 00 63 00 34 00 5a 00 51 00 53 00 43 00 54 00 4f 00 66 00 31 00 6a 00 4f 00 43 00 59 00 79 00 34 00 65 00 66 00 41 00 46 00 42 00 56 00 75 00 73 00 58 00 50 00 32 00 31 00 } //1 qLSSR7c4ZQSCTOf1jOCYy4efAFBVusXP21
		$a_01_10 = {44 00 77 00 67 00 4d 00 63 00 73 00 4c 00 75 00 7a 00 5a 00 70 00 38 00 65 00 79 00 6f 00 6d 00 66 00 47 00 4a 00 75 00 48 00 5a 00 37 00 48 00 63 00 71 00 65 00 6a 00 4a 00 51 00 35 00 7a 00 4b 00 4b 00 4f 00 6f 00 74 00 65 00 41 00 37 00 32 00 } //1 DwgMcsLuzZp8eyomfGJuHZ7HcqejJQ5zKKOoteA72
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*2+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=4
 
}