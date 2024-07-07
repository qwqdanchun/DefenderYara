
rule Trojan_BAT_FormBook_F_MTB{
	meta:
		description = "Trojan:BAT/FormBook.F!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 05 00 00 "
		
	strings :
		$a_02_0 = {07 8e b7 0c 16 03 8e b7 17 da 13 07 0d 2b 37 90 01 26 03 09 03 90 00 } //1
		$a_02_1 = {11 06 8e b7 13 04 16 03 8e b7 17 da 13 0e 13 0a 2b 4c 20 75 d4 57 4a 13 09 22 00 00 98 41 13 0b 90 01 14 03 11 0a 90 00 } //1
		$a_00_2 = {06 8e b7 0b 16 02 8e b7 17 da 13 07 0d 2b 70 02 09 02 09 91 06 } //1
		$a_00_3 = {07 8e b7 0a 16 02 8e b7 17 da 13 07 13 05 2b 15 02 11 05 02 11 05 91 } //1
		$a_00_4 = {11 06 8e b7 0c 16 0e 04 8e b7 17 da 13 10 13 0b 2b 19 0e 04 11 0b 0e 04 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=1
 
}