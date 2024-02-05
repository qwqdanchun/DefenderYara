
rule BrowserModifier_Win32_Hijacker_G{
	meta:
		description = "BrowserModifier:Win32/Hijacker.G,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {7b 00 30 00 33 00 43 00 41 00 30 00 37 00 31 00 36 00 2d 00 39 00 34 00 31 00 38 00 2d 00 34 00 46 00 32 00 33 00 2d 00 42 00 45 00 36 00 30 00 2d 00 46 00 39 00 37 00 37 00 39 00 46 00 42 00 34 00 42 00 34 00 46 00 44 00 7d 00 } //01 00 
		$a_01_1 = {4a 53 5f 48 69 6a 61 63 6b 2e 44 4c 4c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00 
		$a_01_2 = {4c 49 42 49 44 5f 4a 53 5f 48 69 6a 61 63 6b 4c 69 62 } //01 00 
		$a_01_3 = {4a 53 5f 48 69 6a 61 63 6b 4d 6f 64 75 6c 65 } //01 00 
		$a_01_4 = {6a 61 76 61 73 63 72 69 70 74 } //00 00 
	condition:
		any of ($a_*)
 
}