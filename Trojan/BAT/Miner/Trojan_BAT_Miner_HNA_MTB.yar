
rule Trojan_BAT_Miner_HNA_MTB{
	meta:
		description = "Trojan:BAT/Miner.HNA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,32 00 32 00 09 00 00 "
		
	strings :
		$a_03_0 = {25 57 00 61 00 74 00 63 00 68 00 64 00 6f 00 67 00 20 00 52 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 3a 00 20 00 00 ?? 47 00 6c 00 6f 00 62 00 61 00 6c 00 } //25
		$a_01_1 = {4d 00 69 00 6e 00 65 00 72 00 73 00 3a 00 00 } //25
		$a_01_2 = {00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 47 65 74 53 74 72 69 6e 67 00 53 79 73 74 65 6d 2e 4d 61 6e 61 67 65 6d 65 6e 74 00 43 6f 6e 6e 65 63 74 69 6f 6e 4f 70 74 69 6f 6e 73 00 49 6d 70 65 72 73 6f 6e 61 74 69 6f 6e 4c 65 76 65 6c 00 73 65 74 5f 49 6d 70 65 72 73 6f 6e 61 74 69 6f 6e 00 4d 61 6e 61 67 65 6d 65 6e 74 53 63 6f 70 65 } //50 䘀潲䉭獡㙥匴牴湩g敇却牴湩g祓瑳浥䴮湡条浥湥t潃湮捥楴湯灏楴湯s浉数獲湯瑡潩䱮癥汥猀瑥䥟灭牥潳慮楴湯䴀湡条浥湥却潣数
		$a_01_3 = {00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 } //10 䘀潲䉭獡㙥匴牴湩g
		$a_01_4 = {00 49 6d 70 65 72 73 6f 6e 61 74 69 6f 6e 4c 65 76 65 6c 00 } //10 䤀灭牥潳慮楴湯敌敶l
		$a_80_5 = {53 45 4c 45 43 54 20 4e 61 6d 65 2c 20 56 69 64 65 6f 50 72 6f 63 65 73 73 6f 72 20 46 52 4f 4d 20 57 69 6e 33 32 5f 56 69 64 65 6f 43 6f 6e 74 72 6f 6c 6c 65 72 } //SELECT Name, VideoProcessor FROM Win32_VideoController  10
		$a_01_6 = {00 43 6f 6e 6e 65 63 74 69 6f 6e 4f 70 74 69 6f 6e 73 00 } //10
		$a_01_7 = {00 4d 61 6e 61 67 65 6d 65 6e 74 53 63 6f 70 65 00 } //5
		$a_01_8 = {00 4d 61 6e 61 67 65 6d 65 6e 74 4f 62 6a 65 63 74 43 6f 6c 6c 65 63 74 69 6f 6e 00 } //5 䴀湡条浥湥佴橢捥䍴汯敬瑣潩n
	condition:
		((#a_03_0  & 1)*25+(#a_01_1  & 1)*25+(#a_01_2  & 1)*50+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_80_5  & 1)*10+(#a_01_6  & 1)*10+(#a_01_7  & 1)*5+(#a_01_8  & 1)*5) >=50
 
}