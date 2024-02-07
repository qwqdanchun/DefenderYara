
rule Trojan_Win32_Nedsym_F{
	meta:
		description = "Trojan:Win32/Nedsym.F,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 52 65 73 70 6f 6e 63 65 20 42 6c 61 6e 6b 00 } //01 00 
		$a_01_1 = {00 2f 73 74 61 74 32 2e 70 68 70 00 } //01 00  ⼀瑳瑡⸲桰p
		$a_01_2 = {00 5c 73 79 73 74 65 6d 33 32 5c 71 74 70 6c 75 67 69 6e 2e 65 78 65 00 } //01 00 
		$a_01_3 = {00 26 6d 61 63 72 6f 73 65 73 5f 76 65 72 73 69 6f 6e 3d 00 } //01 00  ☀慭牣獯獥癟牥楳湯=
		$a_01_4 = {00 26 64 65 6c 69 76 65 72 65 64 70 65 72 63 65 6e 74 3d 00 } //01 00  ☀敤楬敶敲灤牥散瑮=
		$a_01_5 = {00 47 4c 4f 42 41 4c 5f 52 41 4e 44 4f 4d 49 5a 45 44 5f 42 4f 44 59 00 } //01 00  䜀佌䅂彌䅒䑎䵏婉䑅䉟䑏Y
		$a_01_6 = {00 43 6f 6e 74 72 6f 6c 20 54 68 72 65 61 64 2e 2e 2e 2e 4e 6f 20 4a 6f 62 73 20 4c 6f 61 64 65 64 2c 20 53 6c 65 65 70 69 6e 67 20 33 30 30 20 73 65 63 6f 6e 64 73 2e 2e 2e 2e 00 } //01 00 
		$a_01_7 = {00 43 61 6c 63 75 6c 61 74 69 6e 67 20 44 65 6c 69 76 65 72 65 64 20 50 65 72 63 65 6e 74 2e 2e 2e 2e 00 } //00 00 
	condition:
		any of ($a_*)
 
}