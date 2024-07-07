
rule Trojan_Win32_Avkill_gen_B{
	meta:
		description = "Trojan:Win32/Avkill.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,6e 00 3c 00 0c 00 00 "
		
	strings :
		$a_00_0 = {50 6f 6c 69 63 69 65 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 53 61 66 65 72 5c 43 6f 64 65 49 64 65 6e 74 69 66 69 65 72 73 5c 30 5c 50 61 74 68 73 5c 00 } //10 潐楬楣獥䵜捩潲潳瑦坜湩潤獷卜晡牥䍜摯䥥敤瑮晩敩獲ぜ停瑡獨\
		$a_02_1 = {53 61 66 65 72 46 6c 61 67 73 00 90 02 0a 49 74 65 6d 44 61 74 61 00 90 00 } //10
		$a_02_2 = {44 65 66 61 75 6c 74 4c 65 76 65 6c 00 90 02 0a 54 72 61 6e 73 70 61 72 65 6e 74 45 6e 61 62 6c 65 64 00 90 00 } //10
		$a_02_3 = {50 6f 6c 69 63 79 53 63 6f 70 65 00 90 02 0a 45 78 65 63 75 74 61 62 6c 65 54 79 70 65 73 00 90 00 } //10
		$a_00_4 = {4d 69 63 72 6f 73 6f 66 74 20 53 65 63 75 72 69 74 79 20 43 6c 69 65 6e 74 00 } //50 楍牣獯景⁴敓畣楲祴䌠楬湥t
		$a_00_5 = {4d 69 63 72 6f 73 6f 66 74 20 53 65 63 75 72 69 74 79 20 45 73 73 65 6e 74 69 61 6c 73 00 } //50 楍牣獯景⁴敓畣楲祴䔠獳湥楴污s
		$a_00_6 = {4e 6f 72 74 6f 6e 20 41 6e 74 69 56 69 72 75 73 00 } //50
		$a_00_7 = {42 69 74 44 65 66 65 6e 64 65 72 00 } //50 楂䑴晥湥敤r
		$a_00_8 = {4b 61 73 70 65 72 73 6b 79 20 4c 61 62 00 } //50 態灳牥歳⁹慌b
		$a_00_9 = {41 56 41 53 54 20 53 6f 66 74 77 61 72 65 00 } //50
		$a_00_10 = {50 61 6e 64 61 20 53 65 63 75 72 69 74 79 00 } //50
		$a_00_11 = {4d 63 41 66 65 65 00 } //50
	condition:
		((#a_00_0  & 1)*10+(#a_02_1  & 1)*10+(#a_02_2  & 1)*10+(#a_02_3  & 1)*10+(#a_00_4  & 1)*50+(#a_00_5  & 1)*50+(#a_00_6  & 1)*50+(#a_00_7  & 1)*50+(#a_00_8  & 1)*50+(#a_00_9  & 1)*50+(#a_00_10  & 1)*50+(#a_00_11  & 1)*50) >=60
 
}