
rule TrojanClicker_BAT_Hakfin_A{
	meta:
		description = "TrojanClicker:BAT/Hakfin.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {68 00 61 00 63 00 6b 00 66 00 69 00 6e 00 69 00 74 00 79 00 2e 00 63 00 6f 00 6d 00 2f 00 7a 00 65 00 75 00 73 00 2e 00 68 00 74 00 6d 00 6c 00 90 01 02 77 00 65 00 62 00 79 00 74 00 62 00 31 00 90 00 } //1
		$a_03_1 = {68 00 61 00 63 00 6b 00 66 00 69 00 6e 00 69 00 74 00 79 00 2e 00 63 00 6f 00 6d 00 2f 00 6c 00 65 00 6e 00 67 00 74 00 68 00 2e 00 68 00 74 00 6d 00 6c 00 90 01 02 3c 00 70 00 3e 00 90 01 02 3c 00 2f 00 70 00 3e 00 90 00 } //1
		$a_03_2 = {26 00 71 00 75 00 6f 00 74 00 3b 00 90 01 02 22 00 90 01 02 26 00 23 00 33 00 39 00 3b 00 90 00 } //1
		$a_01_3 = {42 72 6f 77 73 65 72 00 42 72 6f 77 73 65 72 2e 65 78 65 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}