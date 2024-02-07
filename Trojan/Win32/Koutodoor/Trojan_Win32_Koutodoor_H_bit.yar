
rule Trojan_Win32_Koutodoor_H_bit{
	meta:
		description = "Trojan:Win32/Koutodoor.H!bit,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 4d 00 61 00 69 00 6e 00 } //01 00  \Software\Microsoft\Internet Explorer\Main
		$a_01_1 = {53 00 74 00 61 00 72 00 74 00 20 00 50 00 61 00 67 00 65 00 } //01 00  Start Page
		$a_01_2 = {37 66 37 66 2e 63 6f 6d } //01 00  7f7f.com
		$a_01_3 = {67 6f 32 30 30 30 2e 63 6e } //01 00  go2000.cn
		$a_01_4 = {99 f7 7d 0c 8a 45 ff 32 04 0a } //0a 00 
		$a_01_5 = {66 52 50 66 0d 97 42 66 25 c0 45 85 c6 84 c6 80 fa 51 58 66 5a } //0a 00 
		$a_01_6 = {53 66 50 32 c3 80 c4 25 66 3b c2 66 2b c2 81 cb f5 62 00 00 3b df 66 0b c3 f6 c3 01 66 58 5b } //00 00 
	condition:
		any of ($a_*)
 
}