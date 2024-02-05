
rule Ransom_Win32_Tobfy_J{
	meta:
		description = "Ransom:Win32/Tobfy.J,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {70 69 63 74 75 72 65 2e 70 68 70 00 } //02 00 
		$a_01_1 = {75 6e 6c 6f 63 6b 2e 70 68 70 00 } //01 00 
		$a_01_2 = {47 6f 6f 67 6c 65 43 68 72 6f 6d 65 00 00 00 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00 
		$a_03_3 = {6a 00 6a 02 ff d0 8b f0 83 fe ff 74 90 01 01 8d 85 90 01 02 ff ff 50 56 c7 85 90 01 02 ff ff 28 01 00 00 90 03 02 01 ff d7 e8 90 00 } //01 00 
		$a_01_4 = {8b 54 24 04 33 c0 eb 09 0f be c9 c1 c0 07 33 c1 42 8a 0a 84 c9 75 f1 c3 55 8b ec 8b 45 08 48 } //00 00 
	condition:
		any of ($a_*)
 
}