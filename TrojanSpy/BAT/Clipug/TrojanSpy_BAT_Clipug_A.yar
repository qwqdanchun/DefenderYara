
rule TrojanSpy_BAT_Clipug_A{
	meta:
		description = "TrojanSpy:BAT/Clipug.A,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 06 00 00 "
		
	strings :
		$a_03_0 = {28 08 00 00 06 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 0a 06 72 90 01 02 00 70 16 28 90 01 01 00 00 0a 0b 07 13 06 11 06 2c 15 28 08 00 00 06 6f 90 01 01 00 00 0a 72 90 01 02 00 70 6f 90 01 01 00 00 0a 90 00 } //2
		$a_03_1 = {28 08 00 00 06 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 0a 06 72 90 01 02 00 70 16 28 90 01 01 00 00 0a 06 72 90 01 02 00 70 16 28 90 01 01 00 00 0a 60 06 72 90 01 02 00 70 16 28 90 01 01 00 00 0a 90 00 } //1
		$a_03_2 = {60 0b 07 13 06 11 06 2c 15 28 08 00 00 06 6f 90 01 01 00 00 0a 72 90 01 02 00 70 6f 90 01 01 00 00 0a 90 00 } //1
		$a_00_3 = {23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 23 00 } //5 ##########################
		$a_00_4 = {23 00 23 00 20 00 23 00 23 00 23 00 23 00 20 00 23 00 23 00 23 00 23 00 20 00 23 00 23 00 23 00 23 00 20 00 23 00 23 00 23 00 23 00 20 00 23 00 23 00 23 00 23 00 20 00 23 00 23 00 23 00 23 00 } //5 ## #### #### #### #### #### ####
		$a_01_5 = {67 65 74 5f 43 6c 69 70 62 6f 61 72 64 00 47 65 74 54 65 78 74 00 } //5 敧彴汃灩潢牡d敇呴硥t
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_00_3  & 1)*5+(#a_00_4  & 1)*5+(#a_01_5  & 1)*5) >=17
 
}