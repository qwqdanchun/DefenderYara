
rule Backdoor_Win32_Binanen_A_dll{
	meta:
		description = "Backdoor:Win32/Binanen.A!dll,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {8b 54 24 08 33 c0 85 d2 7e 17 8b 4c 24 04 53 8a 1c 08 80 f3 aa 88 1c 08 40 3b c2 7c f2 33 c0 5b } //01 00 
		$a_01_1 = {63 6d 64 00 67 65 74 69 6e 66 6f 00 6c 69 73 74 64 69 73 6b } //01 00  浣d敧楴普o楬瑳楤歳
		$a_01_2 = {48 6f 73 74 4e 61 6d 65 3a 25 73 20 20 55 73 65 72 4e 61 6d 65 3a 25 73 20 23 23 25 73 20 0d 0a 4f 70 65 6e 54 69 6d 65 3a 25 64 44 61 79 20 25 64 3a 25 64 20 20 20 20 4c 6f 63 61 6c 54 69 6d 65 3a 5b 25 30 32 64 } //01 00 
		$a_01_3 = {53 65 74 20 42 61 63 6b 20 44 61 74 65 74 69 6d 65 20 45 72 72 6f 72 21 00 00 00 30 53 65 74 20 42 61 63 6b 20 44 61 74 65 74 69 6d 65 20 4f 6b 21 } //00 00 
	condition:
		any of ($a_*)
 
}