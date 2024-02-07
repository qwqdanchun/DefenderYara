
rule Backdoor_Win32_Plugx_AB{
	meta:
		description = "Backdoor:Win32/Plugx.AB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 6f 6f 6b 69 65 73 3a 20 53 79 6d 31 2e 30 } //01 00  Cookies: Sym1.0
		$a_01_1 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 31 00 5b 00 31 00 32 00 33 00 34 00 35 00 36 00 37 00 38 00 5d 00 } //01 00  \\.\pipe\1[12345678]
		$a_01_2 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 32 00 5b 00 31 00 32 00 33 00 34 00 35 00 36 00 37 00 38 00 5d 00 } //00 00  \\.\pipe\2[12345678]
	condition:
		any of ($a_*)
 
}