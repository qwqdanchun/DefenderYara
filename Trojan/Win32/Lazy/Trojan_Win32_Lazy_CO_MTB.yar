
rule Trojan_Win32_Lazy_CO_MTB{
	meta:
		description = "Trojan:Win32/Lazy.CO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0a 00 00 "
		
	strings :
		$a_01_0 = {6b 66 76 61 74 6c 67 6f 2e 64 6c 6c 00 77 74 76 72 6d 71 70 73 65 79 00 78 6b 6c 75 77 67 73 79 00 76 78 62 6f 72 65 6e 7a 64 } //4 晫慶汴潧搮汬眀癴浲灱敳y歸畬杷祳瘀扸牯湥摺
		$a_01_1 = {6d 79 78 6e 74 69 68 7a 2e 64 6c 6c 00 79 71 63 78 65 77 72 76 6c 00 6d 6e 77 65 67 62 73 6f 63 6a 61 76 00 65 70 73 6c 62 71 67 68 6e 63 74 00 79 70 77 6d 73 6f } //4 祭湸楴穨搮汬礀捱數牷汶洀睮来獢捯慪v灥汳煢桧据t灹海潳
		$a_01_2 = {67 70 75 66 79 69 6b 63 2e 64 6c 6c 00 78 70 72 6d 63 64 75 77 79 71 68 6f 00 7a 75 6e 79 6f 64 76 77 61 62 00 75 76 74 78 61 70 6e 63 6a 6d 73 72 00 67 7a 69 62 71 6d 78 } //4
		$a_01_3 = {6d 73 76 68 64 66 75 71 2e 64 6c 6c 00 6b 75 6e 74 70 64 6f 67 79 7a 6a 00 6a 6e 67 74 68 70 73 7a 62 77 6f 00 62 68 73 71 6f 69 63 66 64 00 6a 6c 66 65 68 69 } //4
		$a_01_4 = {77 68 62 65 6c 6e 79 72 2e 64 6c 6c 00 74 64 63 6b 67 73 71 70 66 6e 77 7a 00 70 65 69 73 75 6e 00 73 78 64 6c 63 6a 6b 65 71 62 00 62 70 6a 76 6e 6b 79 } //4
		$a_01_5 = {74 70 65 75 66 76 64 78 2e 64 6c 6c 00 64 75 65 62 72 63 00 72 69 79 6d 67 7a 63 00 62 6a 68 74 77 64 6c 65 66 78 79 00 6b 73 77 66 6f 70 76 78 62 61 64 72 } //4 灴略癦硤搮汬搀敵牢c楲浹穧c橢瑨摷敬硦y獫晷灯硶慢牤
		$a_01_6 = {61 77 62 73 76 66 70 75 } //1 awbsvfpu
		$a_01_7 = {6c 68 6a 6e 7a 62 61 } //1 lhjnzba
		$a_01_8 = {6d 65 72 7a 76 6b } //1 merzvk
		$a_01_9 = {77 64 62 67 76 6b 6f } //1 wdbgvko
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*4+(#a_01_2  & 1)*4+(#a_01_3  & 1)*4+(#a_01_4  & 1)*4+(#a_01_5  & 1)*4+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=4
 
}