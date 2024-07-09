
rule Trojan_Win32_Trickbot_ZZ{
	meta:
		description = "Trojan:Win32/Trickbot.ZZ,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {33 c0 68 1e 03 00 00 59 50 e2 fd 8b c7 57 8b ec 05 f9 24 00 00 89 45 04 8b c6 89 45 20 68 f0 ff 00 00 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Trickbot_ZZ_2{
	meta:
		description = "Trojan:Win32/Trickbot.ZZ,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 0d 00 00 "
		
	strings :
		$a_01_0 = {5f 43 6f 6e 74 72 6f 6c 40 33 36 00 5f 46 72 65 65 42 75 66 66 65 72 40 34 00 5f 52 65 6c 65 61 73 65 40 34 00 5f 53 74 61 72 74 40 33 32 00 } //1
		$a_01_1 = {42 61 63 6b 77 61 72 64 00 43 6f 6e 74 72 6f 6c 00 46 6f 72 77 61 72 64 00 46 72 65 65 42 75 66 66 65 72 00 50 61 75 73 65 00 52 65 6c 65 61 73 65 00 52 65 76 65 72 73 65 00 53 68 75 66 66 6c 65 00 53 74 61 72 74 00 } //1 慂正慷摲䌀湯牴汯䘀牯慷摲䘀敲䉥晵敦r慐獵e敒敬獡e敒敶獲e桓晵汦e瑓牡t
		$a_01_2 = {43 6f 6e 74 72 6f 6c 00 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 00 46 72 65 65 42 75 66 66 65 72 00 52 65 6c 65 61 73 65 00 53 74 61 72 74 00 } //1 潃瑮潲l牃慥整湉瑳湡散䘀敲䉥晵敦r敒敬獡e瑓牡t
		$a_01_3 = {43 6f 6e 74 72 6f 6c 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 00 46 72 65 65 42 75 66 66 65 72 00 4a 4e 49 5f 4f 6e 4c 6f 61 64 00 4a 4e 49 5f 4f 6e 55 6e 6c 6f 61 64 00 52 65 6c 65 61 73 65 00 53 74 61 72 74 00 } //1
		$a_01_4 = {43 6f 6e 74 72 6f 6c 00 46 72 65 65 42 75 66 66 65 72 00 49 6e 69 74 00 52 65 6c 65 61 73 65 00 53 74 61 72 74 00 55 6e 69 6e 73 74 61 6c 6c 00 } //1 潃瑮潲l牆敥畂晦牥䤀楮t敒敬獡e瑓牡t湕湩瑳污l
		$a_01_5 = {43 6f 6e 74 72 6f 6c 00 46 72 65 65 42 75 66 66 65 72 00 4a 52 45 5f 4f 6e 4c 6f 61 64 00 4a 52 45 5f 4f 6e 55 6e 6c 6f 61 64 00 52 65 6c 65 61 73 65 00 53 74 61 72 74 00 } //1
		$a_01_6 = {43 6f 6e 74 72 6f 6c 00 46 72 65 65 42 75 66 66 65 72 00 4d 6f 76 65 33 44 00 4d 6f 76 65 42 6f 74 74 6f 6d 00 4d 6f 76 65 4c 65 66 74 00 4d 6f 76 65 52 69 67 68 74 00 4d 6f 76 65 54 6f 70 00 52 65 6c 65 61 73 65 00 53 74 61 72 74 00 } //1 潃瑮潲l牆敥畂晦牥䴀癯㍥D潍敶潂瑴浯䴀癯䱥晥t潍敶楒桧t潍敶潔p敒敬獡e瑓牡t
		$a_01_7 = {43 6f 6e 74 72 6f 6c 00 46 72 65 65 42 75 66 66 65 72 00 4e 65 74 53 65 72 76 65 72 53 74 61 72 74 00 4e 65 74 53 65 72 76 65 72 53 74 6f 70 00 52 65 6c 65 61 73 65 00 53 74 61 72 74 00 } //1 潃瑮潲l牆敥畂晦牥一瑥敓癲牥瑓牡t敎却牥敶卲潴p敒敬獡e瑓牡t
		$a_01_8 = {43 6f 6e 74 72 6f 6c 00 46 72 65 65 42 75 66 66 65 72 00 4f 6e 4c 6f 61 64 00 4f 6e 55 6e 6c 6f 61 64 00 52 65 6c 65 61 73 65 00 53 74 61 72 74 00 } //1
		$a_01_9 = {43 6f 6e 74 72 6f 6c 00 46 72 65 65 42 75 66 66 65 72 00 52 65 6c 65 61 73 65 00 53 74 61 72 74 00 } //1
		$a_01_10 = {43 6f 6e 74 72 6f 6c 00 46 72 65 65 42 75 66 66 65 72 00 00 52 65 6c 65 61 73 65 00 53 74 61 72 74 00 } //1
		$a_03_11 = {43 6f 6e 74 72 6f 6c 00 46 72 65 65 42 75 66 66 65 72 00 52 65 6c 65 61 73 65 00 3f 52 65 6c 65 61 73 65 41 40 [0-20] 00 53 74 61 72 74 00 } //1
		$a_03_12 = {43 6f 6e 74 72 6f 6c 00 3f 44 4c 4c 43 6f 6e 74 72 6f 6c 40 [0-40] 00 3f 44 4c 4c 46 72 65 65 42 75 66 66 65 72 40 [0-10] 00 3f 44 4c 4c 52 65 6c 65 61 73 65 40 [0-10] 00 3f 44 4c 4c 53 74 61 72 74 40 [0-40] 00 46 72 65 65 42 75 66 66 65 72 00 52 65 6c 65 61 73 65 00 53 74 61 72 74 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_03_11  & 1)*1+(#a_03_12  & 1)*1) >=1
 
}