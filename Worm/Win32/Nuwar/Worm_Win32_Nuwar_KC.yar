
rule Worm_Win32_Nuwar_KC{
	meta:
		description = "Worm:Win32/Nuwar.KC,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 28 20 42 00 ff 90 02 28 68 34 20 42 00 ff 90 02 38 6a 02 58 e9 90 01 02 00 00 90 02 e8 8b 90 01 02 00 20 42 00 90 02 70 e8 90 01 02 00 00 5f 5e 5b c9 c3 90 00 } //01 00 
		$a_01_1 = {6e 6f 74 65 70 61 64 2e 65 78 65 00 63 61 6c 63 2e 65 78 65 00 00 00 00 4b 45 52 4e 45 4c 33 32 2e 44 4c 4c 00 00 00 00 47 65 74 50 72 6f 63 41 64 64 72 65 73 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}