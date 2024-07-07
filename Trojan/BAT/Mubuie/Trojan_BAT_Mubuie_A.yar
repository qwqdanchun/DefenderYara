
rule Trojan_BAT_Mubuie_A{
	meta:
		description = "Trojan:BAT/Mubuie.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {04 4c 6f 61 64 00 00 39 01 00 34 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 64 6f 77 73 00 } //1
		$a_01_1 = {25 41 70 70 44 61 74 61 25 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 42 74 68 48 46 53 72 76 00 } //1
		$a_01_2 = {67 65 74 5f 53 65 74 74 69 6e 67 31 00 73 65 74 5f 53 65 74 74 69 6e 67 31 00 67 65 74 5f 53 65 74 74 69 6e 67 32 00 73 65 74 5f 53 65 74 74 69 6e 67 32 00 } //1 敧彴敓瑴湩ㅧ猀瑥卟瑥楴杮1敧彴敓瑴湩㉧猀瑥卟瑥楴杮2
		$a_00_3 = {36 00 62 00 36 00 62 00 32 00 61 00 39 00 32 00 2d 00 37 00 63 00 61 00 33 00 2d 00 34 00 34 00 39 00 31 00 2d 00 39 00 37 00 31 00 38 00 2d 00 30 00 39 00 62 00 31 00 65 00 35 00 65 00 37 00 32 00 38 00 65 00 30 00 } //1 6b6b2a92-7ca3-4491-9718-09b1e5e728e0
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}