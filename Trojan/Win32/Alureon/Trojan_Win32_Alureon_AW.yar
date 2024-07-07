
rule Trojan_Win32_Alureon_AW{
	meta:
		description = "Trojan:Win32/Alureon.AW,SIGNATURE_TYPE_PEHSTR,38 00 38 00 0b 00 00 "
		
	strings :
		$a_01_0 = {5c 74 64 73 73 69 6e 69 74 2e 64 6c 6c } //2 \tdssinit.dll
		$a_01_1 = {74 00 64 00 73 00 73 00 73 00 65 00 72 00 66 00 2e 00 64 00 6c 00 6c 00 } //2 tdssserf.dll
		$a_01_2 = {5b 72 75 6e 73 5f 63 6f 75 6e 74 5f } //1 [runs_count_
		$a_01_3 = {5b 75 72 6c 73 5f 74 6f 5f 73 65 72 66 5f } //1 [urls_to_serf_
		$a_01_4 = {5b 72 65 66 73 5f 74 6f 5f 63 68 61 6e 67 65 5f } //1 [refs_to_change_
		$a_01_5 = {67 5f 70 6c 70 73 74 72 55 72 6c 73 54 6f 53 65 72 66 } //2 g_plpstrUrlsToSerf
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 00 } //10
		$a_01_7 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 00 } //10
		$a_01_8 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 00 } //10
		$a_01_9 = {4d 61 70 46 69 6c 65 41 6e 64 43 68 65 63 6b 53 75 6d 41 00 } //10 慍䙰汩䅥摮桃捥卫浵A
		$a_01_10 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 00 } //10
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*2+(#a_01_6  & 1)*10+(#a_01_7  & 1)*10+(#a_01_8  & 1)*10+(#a_01_9  & 1)*10+(#a_01_10  & 1)*10) >=56
 
}