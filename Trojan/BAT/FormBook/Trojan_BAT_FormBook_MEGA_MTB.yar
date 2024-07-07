
rule Trojan_BAT_FormBook_MEGA_MTB{
	meta:
		description = "Trojan:BAT/FormBook.MEGA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {72 ad 07 00 70 6f 90 01 03 0a 74 05 00 00 1b 0a 28 90 01 03 0a 72 b7 07 00 70 6f 90 01 03 0a 1e 8d 5a 00 00 01 17 73 72 00 00 0a 0b 73 73 00 00 0a 0c 08 07 1f 10 6f 90 01 03 0a 6f 90 01 03 0a 00 08 07 1f 10 6f 90 01 03 0a 6f 90 01 03 0a 00 08 6f 90 01 03 0a 06 16 06 8e 69 6f 90 01 03 0a 90 00 } //2
		$a_01_1 = {52 00 75 00 62 00 79 00 } //1 Ruby
		$a_01_2 = {35 00 35 00 52 00 37 00 53 00 50 00 43 00 34 00 42 00 35 00 34 00 4a 00 51 00 47 00 4e 00 34 00 43 00 35 00 34 00 37 00 48 00 34 00 } //1 55R7SPC4B54JQGN4C547H4
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}