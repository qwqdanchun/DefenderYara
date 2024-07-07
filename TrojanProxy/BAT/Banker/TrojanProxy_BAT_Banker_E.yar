
rule TrojanProxy_BAT_Banker_E{
	meta:
		description = "TrojanProxy:BAT/Banker.E,SIGNATURE_TYPE_PEHSTR_EXT,ffffffd2 00 ffffffc8 00 0a 00 00 "
		
	strings :
		$a_01_0 = {31 00 38 00 38 00 2e 00 31 00 36 00 35 00 2e 00 31 00 34 00 30 00 2e 00 32 00 33 00 33 00 22 00 3b 00 } //100 188.165.140.233";
		$a_01_1 = {4f 00 58 00 59 00 20 00 34 00 36 00 2e 00 31 00 36 00 36 00 2e 00 31 00 34 00 36 00 2e 00 31 00 36 00 35 00 22 00 3b 00 } //50 OXY 46.166.146.165";
		$a_01_2 = {50 00 52 00 4f 00 58 00 59 00 20 00 39 00 34 00 2e 00 32 00 33 00 2e 00 31 00 34 00 34 00 2e 00 32 00 32 00 38 00 22 00 3b 00 } //50 PROXY 94.23.144.228";
		$a_01_3 = {73 00 61 00 6e 00 74 00 61 00 31 00 20 00 3d 00 20 00 22 00 2a 00 5c 00 78 00 37 00 33 00 5c 00 78 00 36 00 31 00 5c 00 78 00 36 00 45 00 5c 00 78 00 37 00 34 00 5c 00 78 00 36 00 31 00 5c 00 78 00 36 00 45 00 5c 00 78 00 36 00 34 00 5c 00 78 00 36 00 35 00 5c 00 78 00 37 00 32 00 2a 00 22 00 3b 00 } //40 santa1 = "*\x73\x61\x6E\x74\x61\x6E\x64\x65\x72*";
		$a_01_4 = {62 00 61 00 6e 00 31 00 20 00 3d 00 20 00 22 00 2a 00 5c 00 78 00 36 00 32 00 5c 00 78 00 36 00 31 00 5c 00 78 00 36 00 45 00 5c 00 78 00 36 00 35 00 5c 00 78 00 37 00 33 00 5c 00 78 00 36 00 35 00 2a 00 22 00 3b 00 } //40 ban1 = "*\x62\x61\x6E\x65\x73\x65*";
		$a_01_5 = {77 00 2e 00 61 00 74 00 61 00 73 00 2e 00 66 00 72 00 2f 00 6b 00 61 00 72 00 65 00 6e 00 6e 00 2f 00 69 00 70 00 2e 00 70 00 68 00 70 00 } //20 w.atas.fr/karenn/ip.php
		$a_01_6 = {6b 00 72 00 6f 00 70 00 75 00 73 00 2e 00 61 00 6d 00 61 00 72 00 6f 00 78 00 2e 00 72 00 75 00 2f 00 74 00 65 00 6d 00 70 00 2f 00 69 00 70 00 2e 00 70 00 68 00 70 00 } //20 kropus.amarox.ru/temp/ip.php
		$a_01_7 = {70 00 74 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 61 00 63 00 2e 00 6a 00 73 00 70 00 } //20 pt.com/pac.jsp
		$a_01_8 = {5c 00 65 00 78 00 74 00 72 00 61 00 63 00 74 00 69 00 65 00 5c 00 69 00 65 00 65 00 78 00 74 00 72 00 61 00 63 00 74 00 2e 00 65 00 78 00 65 00 } //20 \extractie\ieextract.exe
		$a_01_9 = {78 75 70 61 31 31 20 78 75 70 61 31 32 20 78 75 70 61 34 } //20 xupa11 xupa12 xupa4
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*50+(#a_01_2  & 1)*50+(#a_01_3  & 1)*40+(#a_01_4  & 1)*40+(#a_01_5  & 1)*20+(#a_01_6  & 1)*20+(#a_01_7  & 1)*20+(#a_01_8  & 1)*20+(#a_01_9  & 1)*20) >=200
 
}