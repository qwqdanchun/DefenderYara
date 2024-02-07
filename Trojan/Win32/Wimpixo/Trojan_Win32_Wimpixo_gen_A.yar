
rule Trojan_Win32_Wimpixo_gen_A{
	meta:
		description = "Trojan:Win32/Wimpixo.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {8a 1a 33 c0 8a c5 32 c3 88 04 16 66 0f b6 02 03 c1 8d 0c 40 c1 e1 04 2b c8 8d 0c 49 8d 0c 89 8d 0c c9 8d 04 48 b9 bf 58 00 00 2b c8 42 4f 75 d0 } //01 00 
		$a_01_1 = {8b c8 81 e6 ff ff 00 00 2b f7 8d 04 49 c1 e0 03 2b c1 83 c0 07 46 99 f7 fe 8b c2 03 c7 } //01 00 
		$a_00_2 = {25 73 5c 63 6c 6b 25 64 2e 6e 6c 73 00 } //0a 00 
		$a_01_3 = {81 3c 3e f9 d7 90 eb 75 bd 81 7c 3e 04 2e bb 09 d7 75 b3 } //01 00 
		$a_00_4 = {2f 70 73 65 74 2e 64 61 74 20 48 54 54 50 2f 31 2e 31 } //02 00  /pset.dat HTTP/1.1
		$a_01_5 = {81 e5 00 f0 00 00 81 fd 00 30 00 00 75 31 8b 5c 24 10 8b 6c 24 28 43 25 ff 0f 00 00 89 5c 24 10 8b 19 03 c3 8b 1c 30 2b 5d 1c 8b 6c 24 2c 3b dd 75 09 66 81 7c 30 fe c7 05 74 15 } //01 00 
		$a_03_6 = {66 c7 44 24 90 01 01 d4 07 66 c7 44 24 90 01 01 0d 00 66 c7 44 24 90 01 01 0c 00 66 c7 44 24 90 01 01 1e 00 66 89 90 01 01 24 90 01 01 66 89 90 01 01 24 90 01 01 ff d6 90 00 } //01 00 
		$a_01_7 = {8b 56 3c 66 81 7c 32 14 e0 00 8d 04 32 74 04 } //00 00 
	condition:
		any of ($a_*)
 
}