
rule Trojan_BAT_Quipur_A{
	meta:
		description = "Trojan:BAT/Quipur.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {2f 00 43 00 6f 00 6f 00 70 00 65 00 72 00 2f 00 [0-10] 2e 00 74 00 78 00 74 00 } //1
		$a_03_1 = {43 00 3a 00 5c 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 [0-10] 2e 00 65 00 78 00 65 00 } //1
		$a_03_2 = {67 65 74 5f 6c 69 6e 6b [0-10] 73 65 74 5f 6c 69 6e 6b } //1
		$a_01_3 = {67 65 74 5f 69 6e 74 65 72 6e 65 74 6b 6f 6e 74 72 6f 6c } //1 get_internetkontrol
		$a_01_4 = {48 69 64 65 00 53 65 72 76 65 72 43 6f 6d 70 75 74 65 72 } //1
		$a_01_5 = {43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 00 50 72 6f 63 65 73 73 00 53 74 61 72 74 00 67 65 74 5f 45 78 65 63 75 74 61 62 6c 65 50 61 74 68 00 43 6f 70 79 46 69 6c 65 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}