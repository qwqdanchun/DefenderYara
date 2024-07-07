
rule Trojan_Linux_UtCleaner_HA{
	meta:
		description = "Trojan:Linux/UtCleaner.HA,SIGNATURE_TYPE_ELFHSTR_EXT,02 00 02 00 20 00 00 "
		
	strings :
		$a_02_0 = {2f 00 63 00 70 00 20 00 90 02 20 20 00 2f 00 76 00 61 00 72 00 2f 00 61 00 64 00 6d 00 2f 00 6c 00 61 00 73 00 74 00 6c 00 6f 00 67 00 90 00 } //2
		$a_02_1 = {2f 63 70 20 90 02 20 20 2f 76 61 72 2f 61 64 6d 2f 6c 61 73 74 6c 6f 67 90 00 } //2
		$a_02_2 = {2f 00 63 00 70 00 20 00 90 02 20 20 00 2f 00 76 00 61 00 72 00 2f 00 61 00 64 00 6d 00 2f 00 77 00 74 00 6d 00 70 00 90 00 } //2
		$a_02_3 = {2f 63 70 20 90 02 20 20 2f 76 61 72 2f 61 64 6d 2f 77 74 6d 70 90 00 } //2
		$a_02_4 = {2f 00 63 00 70 00 20 00 90 02 20 20 00 2f 00 76 00 61 00 72 00 2f 00 61 00 64 00 6d 00 2f 00 75 00 74 00 6d 00 70 00 90 00 } //2
		$a_02_5 = {2f 63 70 20 90 02 20 20 2f 76 61 72 2f 61 64 6d 2f 75 74 6d 70 90 00 } //2
		$a_02_6 = {2f 00 63 00 70 00 20 00 90 02 20 20 00 2f 00 76 00 61 00 72 00 2f 00 6c 00 6f 00 67 00 2f 00 6c 00 61 00 73 00 74 00 6c 00 6f 00 67 00 90 00 } //2
		$a_02_7 = {2f 63 70 20 90 02 20 20 2f 76 61 72 2f 6c 6f 67 2f 6c 61 73 74 6c 6f 67 90 00 } //2
		$a_02_8 = {2f 00 63 00 70 00 20 00 90 02 20 20 00 2f 00 76 00 61 00 72 00 2f 00 6c 00 6f 00 67 00 2f 00 75 00 74 00 6d 00 70 00 90 00 } //2
		$a_02_9 = {2f 63 70 20 90 02 20 20 2f 76 61 72 2f 6c 6f 67 2f 75 74 6d 70 90 00 } //2
		$a_02_10 = {2f 00 63 00 70 00 20 00 90 02 20 20 00 2f 00 76 00 61 00 72 00 2f 00 6c 00 6f 00 67 00 2f 00 77 00 74 00 6d 00 70 00 90 00 } //2
		$a_02_11 = {2f 63 70 20 90 02 20 20 2f 76 61 72 2f 6c 6f 67 2f 77 74 6d 70 90 00 } //2
		$a_02_12 = {2f 00 63 00 70 00 20 00 90 02 20 20 00 2f 00 76 00 61 00 72 00 2f 00 72 00 75 00 6e 00 2f 00 75 00 74 00 6d 00 70 00 90 00 } //2
		$a_02_13 = {2f 63 70 20 90 02 20 20 2f 76 61 72 2f 72 75 6e 2f 75 74 6d 70 90 00 } //2
		$a_02_14 = {2f 00 63 00 70 00 20 00 2d 00 90 02 02 20 00 2f 00 76 00 61 00 72 00 2f 00 61 00 64 00 6d 00 2f 00 6c 00 61 00 73 00 74 00 6c 00 6f 00 67 00 20 00 90 00 } //-2
		$a_02_15 = {2f 63 70 20 2d 90 02 02 20 2f 76 61 72 2f 61 64 6d 2f 6c 61 73 74 6c 6f 67 20 90 00 } //-2
		$a_02_16 = {2f 00 63 00 70 00 20 00 2d 00 90 02 02 20 00 2f 00 76 00 61 00 72 00 2f 00 61 00 64 00 6d 00 2f 00 77 00 74 00 6d 00 70 00 20 00 90 00 } //-2
		$a_02_17 = {2f 63 70 20 2d 90 02 02 20 2f 76 61 72 2f 61 64 6d 2f 77 74 6d 70 20 90 00 } //-2
		$a_02_18 = {2f 00 63 00 70 00 20 00 2d 00 90 02 02 20 00 2f 00 76 00 61 00 72 00 2f 00 61 00 64 00 6d 00 2f 00 75 00 74 00 6d 00 70 00 20 00 90 00 } //-2
		$a_02_19 = {2f 63 70 20 2d 90 02 02 20 2f 76 61 72 2f 61 64 6d 2f 75 74 6d 70 20 90 00 } //-2
		$a_02_20 = {2f 00 63 00 70 00 20 00 2d 00 90 02 02 20 00 2f 00 76 00 61 00 72 00 2f 00 61 00 64 00 6d 00 2f 00 77 00 74 00 6d 00 70 00 78 00 20 00 90 00 } //-2
		$a_02_21 = {2f 63 70 20 2d 90 02 02 20 2f 76 61 72 2f 61 64 6d 2f 77 74 6d 70 78 20 90 00 } //-2
		$a_02_22 = {2f 00 63 00 70 00 20 00 2d 00 90 02 02 20 00 2f 00 76 00 61 00 72 00 2f 00 61 00 64 00 6d 00 2f 00 75 00 74 00 6d 00 70 00 78 00 20 00 90 00 } //-2
		$a_02_23 = {2f 63 70 20 2d 90 02 02 20 2f 76 61 72 2f 61 64 6d 2f 75 74 6d 70 78 20 90 00 } //-2
		$a_02_24 = {2f 00 63 00 70 00 20 00 2d 00 90 02 02 20 00 2f 00 76 00 61 00 72 00 2f 00 6c 00 6f 00 67 00 2f 00 6c 00 61 00 73 00 74 00 6c 00 6f 00 67 00 20 00 90 00 } //-2
		$a_02_25 = {2f 63 70 20 2d 90 02 02 20 2f 76 61 72 2f 6c 6f 67 2f 6c 61 73 74 6c 6f 67 20 90 00 } //-2
		$a_02_26 = {2f 00 63 00 70 00 20 00 2d 00 90 02 02 20 00 2f 00 76 00 61 00 72 00 2f 00 6c 00 6f 00 67 00 2f 00 75 00 74 00 6d 00 70 00 20 00 90 00 } //-2
		$a_02_27 = {2f 63 70 20 2d 90 02 02 20 2f 76 61 72 2f 6c 6f 67 2f 75 74 6d 70 20 90 00 } //-2
		$a_02_28 = {2f 00 63 00 70 00 20 00 2d 00 90 02 02 20 00 2f 00 76 00 61 00 72 00 2f 00 6c 00 6f 00 67 00 2f 00 77 00 74 00 6d 00 70 00 20 00 90 00 } //-2
		$a_02_29 = {2f 63 70 20 2d 90 02 02 20 2f 76 61 72 2f 6c 6f 67 2f 77 74 6d 70 20 90 00 } //-2
		$a_02_30 = {2f 00 63 00 70 00 20 00 2d 00 90 02 02 20 00 2f 00 76 00 61 00 72 00 2f 00 72 00 75 00 6e 00 2f 00 75 00 74 00 6d 00 70 00 20 00 90 00 } //-2
		$a_02_31 = {2f 63 70 20 2d 90 02 02 20 2f 76 61 72 2f 72 75 6e 2f 75 74 6d 70 20 90 00 } //-2
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*2+(#a_02_2  & 1)*2+(#a_02_3  & 1)*2+(#a_02_4  & 1)*2+(#a_02_5  & 1)*2+(#a_02_6  & 1)*2+(#a_02_7  & 1)*2+(#a_02_8  & 1)*2+(#a_02_9  & 1)*2+(#a_02_10  & 1)*2+(#a_02_11  & 1)*2+(#a_02_12  & 1)*2+(#a_02_13  & 1)*2+(#a_02_14  & 1)*-2+(#a_02_15  & 1)*-2+(#a_02_16  & 1)*-2+(#a_02_17  & 1)*-2+(#a_02_18  & 1)*-2+(#a_02_19  & 1)*-2+(#a_02_20  & 1)*-2+(#a_02_21  & 1)*-2+(#a_02_22  & 1)*-2+(#a_02_23  & 1)*-2+(#a_02_24  & 1)*-2+(#a_02_25  & 1)*-2+(#a_02_26  & 1)*-2+(#a_02_27  & 1)*-2+(#a_02_28  & 1)*-2+(#a_02_29  & 1)*-2+(#a_02_30  & 1)*-2+(#a_02_31  & 1)*-2) >=2
 
}