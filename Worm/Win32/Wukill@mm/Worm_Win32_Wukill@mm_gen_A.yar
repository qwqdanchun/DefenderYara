
rule Worm_Win32_Wukill@mm_gen_A{
	meta:
		description = "Worm:Win32/Wukill@mm.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {77 75 6b 69 6c 6c 00 58 67 74 72 61 79 } //01 00 
		$a_01_1 = {2a 00 5c 00 41 00 44 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 56 00 69 00 73 00 75 00 61 00 6c 00 20 00 53 00 74 00 75 00 64 00 69 00 6f 00 5c 00 56 00 42 00 39 00 38 00 5c 00 6c 00 68 00 77 00 5c 00 58 00 44 00 44 00 5c 00 58 00 44 00 44 00 } //01 00  *\AD:\Program Files\Microsoft Visual Studio\VB98\lhw\XDD\XDD
		$a_01_2 = {45 00 4e 00 44 00 2b 00 6e 00 6f 00 57 00 53 00 48 00 2b 00 } //01 00  END+noWSH+
		$a_01_3 = {5c 00 58 00 67 00 74 00 72 00 61 00 79 00 2e 00 76 00 62 00 70 00 } //00 00  \Xgtray.vbp
	condition:
		any of ($a_*)
 
}