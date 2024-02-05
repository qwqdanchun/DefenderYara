
rule Trojan_Win32_Ontonphu_C{
	meta:
		description = "Trojan:Win32/Ontonphu.C,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 08 00 09 00 00 04 00 "
		
	strings :
		$a_01_0 = {bb 01 00 00 00 8b 45 fc 0f b6 44 18 ff 2b 45 f8 2b c3 33 45 f8 89 45 f4 8d 45 f0 8a 55 f4 e8 } //02 00 
		$a_01_1 = {63 85 80 87 8f 9f 98 4b 4d 6c } //02 00 
		$a_01_2 = {51 85 96 99 95 9e 99 97 98 a4 00 } //02 00 
		$a_01_3 = {51 85 96 99 95 8c 96 8c 93 00 } //02 00 
		$a_01_4 = {78 9b 8d 6d 88 9f 8b 78 9e 9b a4 81 00 } //02 00 
		$a_01_5 = {94 91 93 94 9e 99 91 00 } //02 00 
		$a_01_6 = {64 90 9c 96 97 7f 85 a1 9c 93 95 a5 82 00 } //02 00 
		$a_01_7 = {6e 95 94 8a 78 8a a0 9d 93 a3 83 99 9f a7 00 } //02 00 
		$a_01_8 = {6a 85 9c 88 56 7b 9e a1 99 94 47 62 6a 6a 87 00 } //00 00 
	condition:
		any of ($a_*)
 
}