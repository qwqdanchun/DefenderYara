
rule PWS_Win32_Simda_L{
	meta:
		description = "PWS:Win32/Simda.L,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 42 41 43 4b 53 50 41 43 45 5d } //01 00  [BACKSPACE]
		$a_01_1 = {5c 6b 65 79 6c 6f 67 2e 64 61 74 00 } //01 00 
		$a_00_2 = {8a 0c 30 80 f1 62 88 0c 30 40 3b c7 72 f2 } //00 00 
	condition:
		any of ($a_*)
 
}