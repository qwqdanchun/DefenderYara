
rule BrowserModifier_Win32_CNNIC_DLL{
	meta:
		description = "BrowserModifier:Win32/CNNIC.DLL,SIGNATURE_TYPE_PEHSTR,0e 00 0e 00 0b 00 00 0a 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 43 4e 4e 49 43 5c 43 64 6e 43 6c 69 65 6e 74 5c 43 6f 6e 73 6f 6c 65 00 } //01 00 
		$a_01_1 = {63 64 6e 6e 73 2e 64 6c 6c 00 } //01 00 
		$a_01_2 = {5c 63 64 6e 63 6d 64 2e 64 6c 6c 00 } //01 00 
		$a_01_3 = {69 64 6e 63 6f 6e 76 2e 64 6c 6c 00 } //01 00 
		$a_01_4 = {63 64 6e 74 72 61 6e } //01 00 
		$a_01_5 = {43 44 4e 43 4c 49 45 4e 54 5c 4d 41 49 4c } //01 00 
		$a_01_6 = {63 64 6e 74 64 6e 73 2e 64 6c 6c 00 } //01 00 
		$a_01_7 = {69 6d 61 64 6f 6d 2e 64 61 74 00 } //01 00 
		$a_01_8 = {57 4d 48 6c 70 72 2e 44 4c 4c 00 } //01 00 
		$a_01_9 = {63 64 6e 75 6e 69 6e 73 2e 65 78 65 00 } //01 00 
		$a_01_10 = {69 6d 61 6f 65 2e 64 6c 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}