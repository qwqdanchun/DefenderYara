
rule Trojan_BAT_Kilim_C{
	meta:
		description = "Trojan:BAT/Kilim.C,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_03_0 = {06 20 e8 03 00 00 6f 90 01 01 00 00 0a 00 02 6f 90 01 01 00 00 06 6f 90 01 01 00 00 0a 00 02 6f 90 01 01 00 00 06 20 f4 01 90 00 } //1
		$a_01_1 = {52 65 53 74 61 72 74 53 65 72 76 65 72 00 54 69 6d 65 72 31 5f 54 69 63 6b } //1
		$a_03_2 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 46 00 20 00 2f 00 49 00 4d 00 20 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_03_3 = {47 00 6f 00 6f 00 67 00 6c 00 65 00 5c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 5c 00 90 01 02 50 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 73 00 90 01 02 45 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 90 00 } //1
		$a_01_4 = {47 00 f6 00 72 00 65 00 76 00 20 00 59 00 f6 00 6e 00 65 00 74 00 69 00 63 00 69 00 73 00 69 00 20 00 2d 00 20 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 20 00 43 00 68 00 72 00 6f 00 6d 00 65 00 } //1
		$a_03_5 = {5c 00 62 00 67 00 2e 00 90 03 06 04 74 00 78 00 74 00 6a 00 73 00 90 00 } //1
		$a_02_6 = {5c 00 41 00 50 00 50 00 90 02 02 44 00 41 00 54 00 41 00 5c 00 77 00 69 00 6e 00 75 00 70 00 64 00 61 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_03_7 = {50 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 73 00 2e 00 74 00 78 00 74 00 90 01 02 62 00 67 00 2e 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_02_6  & 1)*1+(#a_03_7  & 1)*1) >=7
 
}