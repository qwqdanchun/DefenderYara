
rule Trojan_Win32_MiniDuke_A_dha{
	meta:
		description = "Trojan:Win32/MiniDuke.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,28 00 1e 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {70 72 6f 63 3a 20 20 25 64 20 25 73 } //0a 00 
		$a_01_1 = {6c 6f 67 69 6e 3a 20 25 73 5c 25 73 } //0a 00 
		$a_01_2 = {49 44 3a 20 20 20 20 30 78 25 30 38 58 } //0a 00 
		$a_01_3 = {68 6f 73 74 3a 20 20 25 73 3a 25 64 } //0a 00 
		$a_01_4 = {6d 65 74 68 3a 20 20 25 73 20 25 64 } //0a 00 
		$a_01_5 = {70 69 70 65 3a 20 5c 5c 25 73 5c 70 69 70 65 5c 25 73 } //0a 00 
		$a_01_6 = {6c 61 6e 67 3a 20 20 25 73 } //0a 00 
		$a_01_7 = {64 65 6c 61 79 3a 20 25 64 } //1e 00 
		$a_01_8 = {65 63 6f 6c 65 73 6e 64 6d 65 73 73 69 6e 65 73 2e 6f 72 67 } //1e 00 
		$a_01_9 = {73 61 6c 65 73 61 70 70 6c 69 61 6e 63 65 73 2e 63 6f 6d } //00 00 
	condition:
		any of ($a_*)
 
}