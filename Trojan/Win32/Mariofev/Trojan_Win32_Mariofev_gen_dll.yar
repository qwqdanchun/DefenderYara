
rule Trojan_Win32_Mariofev_gen_dll{
	meta:
		description = "Trojan:Win32/Mariofev.gen!dll,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {47 65 74 4d 6f 64 75 6c 65 49 64 00 47 65 74 4d 6f 64 75 6c 65 56 65 72 73 69 6f 6e 00 4d 6f 64 75 6c 65 53 74 61 72 74 75 70 00 90 02 40 4f 6e 4b 65 72 6e 65 6c 45 76 65 6e 74 52 65 63 65 69 76 65 64 00 90 00 } //01 00 
		$a_03_1 = {2e 64 6c 6c 00 47 65 74 4d 6f 64 75 6c 65 49 64 00 47 65 74 4d 6f 64 75 6c 65 56 65 72 73 69 6f 6e 00 4d 6f 64 75 6c 65 53 74 61 72 74 75 70 00 90 09 16 00 90 02 10 00 4d 6f 64 90 00 } //01 00 
		$a_01_2 = {4d 46 43 34 32 2e 44 4c 4c 00 } //00 00  䙍㑃⸲䱄L
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Mariofev_gen_dll_2{
	meta:
		description = "Trojan:Win32/Mariofev.gen!dll,SIGNATURE_TYPE_PEHSTR_EXT,14 00 07 00 06 00 00 06 00 "
		
	strings :
		$a_01_0 = {2e 64 6c 6c 00 47 65 74 4d 6f 64 75 6c 65 49 64 00 6b 65 5f 47 65 74 46 69 72 73 74 4f 62 6a 00 6b 65 5f 47 65 74 4d 6f 64 75 6c 65 56 65 72 73 69 6f 6e 00 6b 65 5f 47 65 74 4e 65 78 74 4f 62 6a 00 6b 65 5f 49 73 4d 6f 64 75 6c 65 45 78 69 73 74 73 00 6b 65 5f 4d 6f 64 75 6c 65 41 76 61 69 6c 61 62 6c 65 00 6b 65 5f 4e 6f 74 69 66 79 45 76 65 6e 74 00 6b 65 5f 52 61 6e 64 00 6b 65 5f 52 65 67 69 73 74 65 72 41 6e 64 4c 6f 61 64 4e 65 77 4d 6f 64 75 6c 65 } //02 00 
		$a_01_1 = {63 3a 5c 63 72 61 73 68 64 75 6d 70 2e 6c 6f 67 } //02 00  c:\crashdump.log
		$a_01_2 = {6b 65 5f 54 65 72 6d 69 6e 61 74 65 4b 65 72 6e 65 6c 00 } //02 00 
		$a_01_3 = {6b 65 5f 70 61 6e 69 63 00 } //01 00 
		$a_01_4 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  ReadProcessMemory
		$a_01_5 = {4c 6f 61 64 52 65 73 6f 75 72 63 65 } //00 00  LoadResource
	condition:
		any of ($a_*)
 
}