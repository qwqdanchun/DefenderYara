
rule Trojan_Win32_Vundo_gen_AG{
	meta:
		description = "Trojan:Win32/Vundo.gen!AG,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_05_0 = {6f 00 6e 00 00 00 00 00 47 00 72 00 65 00 65 00 6b 00 20 00 49 00 42 00 4d 00 20 00 33 00 31 00 39 00 20 00 4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 20 00 4c 00 61 00 79 00 6f 00 75 00 74 00 00 00 64 00 22 00 01 00 46 00 69 00 6c 00 65 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 00 00 00 00 35 00 2e 00 31 00 2e 00 32 00 36 00 30 00 30 00 2e 00 30 00 20 00 28 00 78 00 70 00 63 00 6c 00 69 00 65 00 6e 00 74 00 2e 00 30 00 31 00 30 00 38 00 31 00 37 00 2d 00 31 00 31 00 34 00 38 00 29 00 00 00 40 00 10 00 01 00 49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 4e 00 61 00 6d 00 65 00 00 00 6b 00 62 00 64 00 68 00 65 00 33 00 31 00 39 00 20 00 28 00 33 00 2e 00 31 00 31 00 29 00 00 00 80 00 2e 00 01 00 4c 00 } //00 00 
	condition:
		any of ($a_*)
 
}