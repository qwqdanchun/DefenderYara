
rule Trojan_Win32_Zenpak_DSA_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.DSA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b f0 89 5c 24 30 c7 44 24 1c 42 6f 62 00 89 4c 24 2c e8 90 01 04 6a 15 8d 44 24 20 50 68 90 01 04 e8 90 01 04 6a 15 8d 4c 24 2c 51 68 90 01 04 e8 90 00 } //01 00 
		$a_02_1 = {8b f0 89 5c 24 20 c7 84 24 90 01 04 42 6f 62 00 89 9c 24 90 01 04 89 9c 24 90 01 04 89 9c 24 90 01 04 89 9c 24 90 01 04 e8 90 01 04 6a 15 8d 94 24 90 01 04 52 68 90 01 04 e8 90 01 04 6a 15 8d 84 24 90 01 04 50 68 90 01 04 e8 90 00 } //01 00 
		$a_00_2 = {48 65 6c 6c 6f 20 25 73 2c 20 79 6f 75 20 61 72 65 20 25 64 20 79 65 61 72 73 20 6f 6c 64 } //00 00  Hello %s, you are %d years old
	condition:
		any of ($a_*)
 
}