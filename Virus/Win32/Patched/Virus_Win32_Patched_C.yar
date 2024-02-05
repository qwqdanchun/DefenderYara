
rule Virus_Win32_Patched_C{
	meta:
		description = "Virus:Win32/Patched.C,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 08 40 13 f9 c1 c1 08 0a c9 75 f4 3b 7d 0c 59 e0 e7 } //01 00 
		$a_01_1 = {66 81 e2 00 f0 81 ea 00 10 00 00 e8 04 00 00 00 e8 00 00 00 83 c4 04 66 81 3a 4d 5a 75 e2 8b c2 03 52 3c 80 3a 50 75 d8 80 7a 01 45 75 d2 } //00 00 
	condition:
		any of ($a_*)
 
}