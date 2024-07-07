
rule Trojan_BAT_FormBook_ABHI_MTB{
	meta:
		description = "Trojan:BAT/FormBook.ABHI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 11 08 72 90 01 03 70 28 90 01 03 06 72 90 01 03 70 20 90 01 03 00 14 14 18 8d 90 01 03 01 25 16 06 11 08 9a a2 25 17 1f 10 8c 90 01 03 01 a2 28 90 01 03 06 a5 90 01 03 01 9c 11 08 17 58 13 08 90 00 } //5
		$a_01_1 = {4a 00 75 00 6d 00 70 00 65 00 72 00 2e 00 44 00 43 00 43 00 43 00 } //1 Jumper.DCCC
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}