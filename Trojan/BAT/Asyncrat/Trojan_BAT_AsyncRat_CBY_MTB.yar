
rule Trojan_BAT_AsyncRat_CBY_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.CBY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {1f 0a 8d 3a 00 00 01 13 19 03 11 06 20 90 01 04 d6 11 18 1f 28 d8 d6 11 19 16 1f 28 28 90 01 04 00 11 19 1a 94 17 da 17 d6 8d 90 01 04 13 1a 03 11 19 1b 94 11 1a 16 90 00 } //1
		$a_03_1 = {11 1a 8e 69 28 90 01 04 00 12 0c 28 90 01 04 11 19 19 94 d6 73 90 01 04 13 0e 11 1a 8e 69 73 90 01 04 13 0d 11 11 11 04 16 97 11 0e 11 1a 11 0d 28 90 01 04 b8 11 10 6f 90 01 04 26 11 18 17 d6 13 18 11 18 11 17 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}