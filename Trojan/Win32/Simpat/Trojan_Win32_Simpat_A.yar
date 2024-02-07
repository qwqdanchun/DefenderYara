
rule Trojan_Win32_Simpat_A{
	meta:
		description = "Trojan:Win32/Simpat.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 00 73 00 69 00 6d 00 70 00 5f 00 64 00 6c 00 6c 00 2e 00 64 00 6c 00 6c 00 } //01 00  esimp_dll.dll
		$a_01_1 = {53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 69 00 6d 00 70 00 5f 00 64 00 6c 00 6c 00 2e 00 64 00 6c 00 6c 00 } //01 00  System32\simp_dll.dll
		$a_01_2 = {9c 60 89 76 04 83 6e 04 05 8b 46 04 2b 46 08 01 46 08 01 46 0c 01 46 10 01 46 14 01 46 18 01 46 1c 01 46 20 01 46 24 01 46 28 01 46 2c 01 46 30 01 46 34 01 46 40 8b 7e 0c 8b 46 48 } //00 00 
	condition:
		any of ($a_*)
 
}