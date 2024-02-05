
rule Trojan_Win32_NinSky_A{
	meta:
		description = "Trojan:Win32/NinSky.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 00 00 5c 00 52 00 65 00 73 00 4e 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 00 00 52 00 75 00 6e 00 } //01 00 
		$a_01_1 = {45 00 75 00 70 00 64 00 61 00 74 00 65 00 00 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00 
		$a_01_2 = {5c 57 4f 52 4b 5c 50 52 4f 4a 45 43 54 5c 49 6e 66 49 6e 73 74 61 6c 6c 42 79 70 61 73 73 55 41 43 5c 52 65 6c 65 61 73 65 5c 42 79 70 61 73 73 55 41 43 2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}