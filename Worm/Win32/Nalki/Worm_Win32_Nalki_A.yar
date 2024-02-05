
rule Worm_Win32_Nalki_A{
	meta:
		description = "Worm:Win32/Nalki.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {46 00 3a 00 5c 00 49 00 6b 00 6c 00 61 00 6e 00 2e 00 65 00 78 00 65 00 00 00 00 00 18 00 00 00 47 00 3a 00 5c 00 49 00 6b 00 6c 00 61 00 6e 00 2e 00 65 00 78 00 65 00 00 00 00 00 18 00 00 00 48 00 3a 00 5c 00 49 00 6b 00 6c 00 61 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_1 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 00 00 00 00 3a 00 00 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 00 00 0a 00 00 00 49 00 6b 00 6c 00 61 00 6e 00 } //01 00 
		$a_01_2 = {ba 28 f3 42 00 8d 4d e8 89 75 e8 89 75 d8 ff 15 10 11 40 00 8d 45 e8 8d 4d d8 50 51 e8 ee 08 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}