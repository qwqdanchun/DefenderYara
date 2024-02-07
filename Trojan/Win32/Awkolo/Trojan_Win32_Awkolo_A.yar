
rule Trojan_Win32_Awkolo_A{
	meta:
		description = "Trojan:Win32/Awkolo.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {81 e1 00 00 00 80 8b 5d f0 8b 14 9d 90 01 04 43 89 d6 81 e6 fe ff ff 7f 09 ce 8b 4d f0 d1 ee 33 34 8d 90 01 04 83 e2 01 33 34 95 90 01 04 89 34 85 90 01 04 be 90 00 } //01 00 
		$a_01_1 = {49 6e 69 74 00 52 75 6e 00 77 65 62 66 61 6b 65 73 00 77 65 62 66 69 6c 74 65 72 73 } //01 00  湉瑩刀湵眀扥慦敫s敷晢汩整獲
		$a_01_2 = {77 65 62 66 69 6c 74 65 72 73 00 73 65 74 5f 75 72 6c 00 64 61 74 61 5f 62 65 66 6f 72 65 } //01 00  敷晢汩整獲猀瑥畟汲搀瑡彡敢潦敲
		$a_03_3 = {64 61 74 61 5f 69 6e 6a 65 63 74 90 02 04 64 61 74 61 5f 61 66 74 65 72 90 02 04 64 61 74 61 5f 65 6e 64 90 00 } //01 00 
		$a_01_4 = {53 79 73 74 65 6d 00 50 61 6e 64 61 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c } //01 00  祓瑳浥倀湡慤匀景睴牡履楍牣獯景屴
		$a_01_5 = {53 00 3a 00 28 00 4d 00 4c 00 3b 00 43 00 49 00 4f 00 49 00 3b 00 4e 00 52 00 4e 00 57 00 4e 00 58 00 3b 00 3b 00 3b 00 4c 00 57 00 29 00 } //00 00  S:(ML;CIOI;NRNWNX;;;LW)
		$a_00_6 = {5d 04 00 } //00 76 
	condition:
		any of ($a_*)
 
}