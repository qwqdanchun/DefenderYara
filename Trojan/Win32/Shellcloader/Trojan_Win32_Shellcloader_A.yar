
rule Trojan_Win32_Shellcloader_A{
	meta:
		description = "Trojan:Win32/Shellcloader.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {c6 44 24 10 56 c6 44 24 11 69 c6 44 24 12 72 c6 44 24 13 74 c6 44 24 14 75 c6 44 24 15 61 c6 44 24 17 41 c6 44 24 1a 6f c6 44 24 1b 63 } //01 00 
		$a_01_1 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 00 00 57 00 6d 00 69 00 48 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {50 00 72 00 6f 00 64 00 75 00 63 00 74 00 4e 00 61 00 6d 00 65 00 00 00 00 00 43 00 6c 00 69 00 65 00 6e 00 74 00 20 00 52 00 75 00 6e 00 74 00 69 00 6d 00 65 00 20 00 41 00 75 00 74 00 68 00 6f 00 72 00 69 00 74 00 79 00 20 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //00 00 
		$a_00_3 = {87 10 } //00 00 
	condition:
		any of ($a_*)
 
}