
rule Trojan_WinNT_Adwind_P{
	meta:
		description = "Trojan:WinNT/Adwind.P,SIGNATURE_TYPE_JAVAHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {91 c3 91 c3 91 c3 91 c3 90 04 ff 03 80 2d ff 90 00 } //1
		$a_01_1 = {04 64 05 08 82 06 78 05 08 82 07 78 04 82 08 06 78 06 08 } //5
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*5) >=6
 
}
rule Trojan_WinNT_Adwind_P_2{
	meta:
		description = "Trojan:WinNT/Adwind.P,SIGNATURE_TYPE_JAVAHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {91 c3 91 c3 91 c3 91 c3 90 04 ff 03 80 2d ff 90 00 } //1
		$a_01_1 = {07 78 06 08 82 04 78 82 06 08 82 07 78 05 59 78 04 82 82 } //5
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*5) >=6
 
}
rule Trojan_WinNT_Adwind_P_3{
	meta:
		description = "Trojan:WinNT/Adwind.P,SIGNATURE_TYPE_JAVAHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {01 00 01 61 01 02 90 01 01 90 04 08 03 80 2d ff 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 00 } //1
		$a_01_1 = {04 64 05 08 82 07 78 06 05 78 04 82 82 06 59 78 06 08 82 } //5
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*5) >=6
 
}
rule Trojan_WinNT_Adwind_P_4{
	meta:
		description = "Trojan:WinNT/Adwind.P,SIGNATURE_TYPE_JAVAHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {6d 61 69 6e 2f 61 61 61 90 02 40 90 04 08 03 80 2d ff 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 00 } //1
		$a_01_1 = {04 64 05 06 78 04 06 78 04 82 06 08 82 07 78 04 59 78 82 } //5
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*5) >=6
 
}
rule Trojan_WinNT_Adwind_P_5{
	meta:
		description = "Trojan:WinNT/Adwind.P,SIGNATURE_TYPE_JAVAHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {6d 61 69 6e 2f 61 61 61 90 02 40 90 04 08 03 80 2d ff 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 00 } //1
		$a_01_1 = {04 64 06 59 78 05 82 04 06 78 05 82 07 59 78 05 59 78 04 82 82 } //5
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*5) >=6
 
}
rule Trojan_WinNT_Adwind_P_6{
	meta:
		description = "Trojan:WinNT/Adwind.P,SIGNATURE_TYPE_JAVAHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {01 00 01 61 01 00 90 04 01 03 20 2d 60 4c 6d 61 69 6e 2f 90 04 01 03 41 2d 5a 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 00 } //1
		$a_01_1 = {04 64 06 08 82 07 78 07 5a 04 78 82 06 08 82 } //5
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*5) >=6
 
}
rule Trojan_WinNT_Adwind_P_7{
	meta:
		description = "Trojan:WinNT/Adwind.P,SIGNATURE_TYPE_JAVAHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {61 73 73 67 01 00 90 01 01 6d 61 69 6e 2f 90 04 01 06 41 2d 5a 61 2d 7a 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 02 10 4e 61 6d 65 43 6c 61 73 73 63 90 02 10 6d 61 69 6e 2f 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 1b 01 90 00 } //1
		$a_01_1 = {04 64 04 06 78 06 59 78 05 82 06 08 82 07 78 05 59 78 04 82 82 } //5
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*5) >=6
 
}
rule Trojan_WinNT_Adwind_P_8{
	meta:
		description = "Trojan:WinNT/Adwind.P,SIGNATURE_TYPE_JAVAHSTR_EXT,1a 00 1a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {01 00 01 61 01 00 90 04 01 03 20 2d 60 4c 6d 61 69 6e 2f 90 02 04 90 04 01 03 41 2d 5a 90 1b 02 90 1b 02 90 1b 02 90 1b 02 90 1b 02 90 1b 02 90 1b 02 90 00 } //1
		$a_03_1 = {01 00 01 61 01 00 90 04 01 03 20 2d c0 4c 6d 61 69 6e 2f 90 04 04 03 41 2d 5a 90 05 0c 03 41 2d 5a 90 1b 02 90 1b 03 90 1b 02 90 1b 03 90 1b 02 90 1b 03 90 00 } //1
		$a_03_2 = {91 c3 91 c3 91 c3 91 c3 90 04 ff 03 80 2d ff 90 00 } //1
		$a_01_3 = {01 00 01 61 01 00 0a 4c 6d 61 69 6e 2f 41 55 78 3b } //1
		$a_01_4 = {01 00 08 6d 61 69 6e 2f 41 75 58 01 00 08 6d 61 69 6e 2f 41 55 78 } //1
		$a_01_5 = {01 00 0a 6d 61 69 6e 2f 5f 5f 43 4f 4e 01 00 0a 6d 61 69 6e 2f 5f 5f 41 55 78 } //1
		$a_03_6 = {5f 61 75 78 3b 90 02 10 6d 61 69 6e 2f 90 02 04 5f 61 75 78 90 00 } //1
		$a_03_7 = {61 75 58 3b 01 00 90 01 01 4c 6a 61 76 61 73 2f 5f 90 02 28 90 17 03 04 04 04 61 55 58 3b 41 75 58 3b 41 55 78 3b 90 00 } //1
		$a_03_8 = {0b 6c 6f 61 64 46 72 6f 6d 58 4d 4c 01 00 18 28 4c 6a 61 76 61 2f 69 6f 2f 49 6e 70 75 74 53 74 72 65 61 6d 3b 29 56 01 00 0b 67 65 74 50 72 6f 70 65 72 74 79 90 02 40 0b 73 65 74 50 72 6f 70 65 72 74 79 90 02 ff 0d 67 65 74 53 74 61 63 6b 54 72 61 63 65 90 08 ff 01 6d 61 69 6e 2f 90 02 04 4e 90 04 01 02 55 75 4c 90 02 06 6d 61 69 6e 2f 90 02 04 90 17 04 03 03 03 03 6e 75 4c 4e 75 6c 6e 55 6c 41 55 78 90 00 } //1
		$a_03_9 = {82 82 92 55 1b 9c 00 06 a7 00 27 2d 15 07 2a 1b 5b b6 00 90 01 01 19 06 1c b6 00 90 01 01 82 82 90 00 } //25
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*25) >=26
 
}