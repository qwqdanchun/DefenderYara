
rule Worm_Win32_Metal_A{
	meta:
		description = "Worm:Win32/Metal.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 00 41 00 43 00 4b 00 45 00 52 00 53 00 20 00 55 00 4e 00 49 00 54 00 45 00 44 00 } //01 00  HACKERS UNITED
		$a_01_1 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 62 00 75 00 73 00 63 00 61 00 72 00 3d 00 26 00 4a 00 4f 00 53 00 46 00 52 00 45 00 53 00 } //01 00  shell\buscar=&JOSFRES
		$a_03_2 = {61 75 74 6f 72 75 6e 43 90 02 08 52 45 47 49 53 54 52 41 52 5f 56 49 52 55 53 90 02 08 66 69 72 6d 61 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}