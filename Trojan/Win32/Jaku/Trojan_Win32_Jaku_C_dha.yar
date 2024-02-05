
rule Trojan_Win32_Jaku_C_dha{
	meta:
		description = "Trojan:Win32/Jaku.C!dha,SIGNATURE_TYPE_PEHSTR,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 6f 61 64 4c 69 62 72 61 72 79 41 00 25 54 4d 50 25 5c 57 4c 49 45 53 56 43 2e 45 58 45 00 26 } //01 00 
		$a_01_1 = {2f 75 70 64 61 74 65 2e 70 68 70 00 4b 45 52 4e 45 4c 33 32 2e 44 4c 4c 00 53 48 45 4c 4c 33 32 } //01 00 
		$a_01_2 = {4c 61 4c 62 61 79 00 00 25 4d 25 57 49 53 43 45 45 00 00 00 98 42 88 42 78 42 68 42 5c 42 54 42 } //01 00 
		$a_01_3 = {25 00 73 00 5c 00 2a 00 2e 00 2a 00 00 00 00 00 5c 00 00 00 25 00 73 00 25 00 73 00 00 00 00 00 25 00 73 00 3a 00 5c 00 2a 00 2e 00 2a 00 00 00 25 00 63 00 3a 00 5c 00 00 00 00 00 5c 00 5c 00 3f 00 5c 00 25 00 63 00 3a 00 00 00 25 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 46 00 69 00 6c 00 65 00 73 00 25 00 5c 00 33 00 36 00 30 00 } //00 00 
	condition:
		any of ($a_*)
 
}