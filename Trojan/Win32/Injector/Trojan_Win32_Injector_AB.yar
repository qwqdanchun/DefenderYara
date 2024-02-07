
rule Trojan_Win32_Injector_AB{
	meta:
		description = "Trojan:Win32/Injector.AB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {c7 00 54 45 4d 50 c7 40 04 5c 78 5c 00 } //01 00 
		$a_01_1 = {5c 52 75 6e 20 2f 76 20 6d 73 6d 6d 73 67 72 20 2f 74 20 52 45 47 5f 53 5a 20 2f 64 20 00 63 74 66 6d 6f 6e 00 00 00 63 6d 64 20 2f 63 20 52 45 47 20 41 44 44 20 48 4b 43 55 } //01 00 
		$a_01_2 = {25 73 0a 47 6f 74 3a 20 25 73 0a 00 71 71 71 00 77 69 6e 64 69 72 00 73 65 72 76 69 63 65 73 2e 65 78 65 } //01 00 
		$a_01_3 = {54 68 65 72 65 27 73 20 6e 6f 20 72 6f 6f 6d 20 66 6f 72 20 61 20 6e 65 77 20 73 65 63 74 69 6f 6e 20 3a 28 } //00 00  There's no room for a new section :(
	condition:
		any of ($a_*)
 
}