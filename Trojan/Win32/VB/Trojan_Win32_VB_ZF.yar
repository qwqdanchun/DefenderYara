
rule Trojan_Win32_VB_ZF{
	meta:
		description = "Trojan:Win32/VB.ZF,SIGNATURE_TYPE_PEHSTR,20 00 1e 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {23 00 23 00 23 00 2c 00 23 00 23 00 23 00 2c 00 23 00 23 00 23 00 2c 00 23 00 23 00 30 00 20 00 66 00 5c 00 69 00 5c 00 6c 00 5c 00 65 00 5c 00 73 00 5c 00 20 00 5c 00 66 00 5c 00 6f 00 5c 00 75 00 5c 00 6e 00 5c 00 64 00 } //0a 00  ###,###,###,##0 f\i\l\e\s\ \f\o\u\n\d
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 31 00 2e 00 79 00 7a 00 73 00 63 00 2e 00 63 00 6e 00 2f 00 63 00 61 00 73 00 68 00 } //0a 00  http://www1.yzsc.cn/cash
		$a_01_2 = {56 42 35 21 36 26 76 62 36 63 68 73 2e 64 6c 6c } //01 00  VB5!6&vb6chs.dll
		$a_01_3 = {53 00 68 00 65 00 6c 00 6c 00 20 00 44 00 6f 00 63 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 56 00 69 00 65 00 77 00 } //01 00  Shell DocObject View
		$a_01_4 = {65 00 78 00 65 00 63 00 53 00 63 00 72 00 69 00 70 00 74 00 } //00 00  execScript
	condition:
		any of ($a_*)
 
}