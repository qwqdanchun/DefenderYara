
rule Trojan_Win32_Terzib_A{
	meta:
		description = "Trojan:Win32/Terzib.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {48 3b c3 7e 0e 8a 88 90 01 04 30 88 90 01 04 eb ed 90 00 } //01 00 
		$a_01_1 = {44 45 4c 20 2f 51 20 2f 53 20 22 25 73 5c 68 69 73 74 6f 72 79 } //01 00  DEL /Q /S "%s\history
		$a_01_2 = {43 6f 6f 6b 69 65 3a 20 2f 73 65 61 72 63 68 3f 68 6c 3d 65 6e 3d 71 3d } //00 00  Cookie: /search?hl=en=q=
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Terzib_A_2{
	meta:
		description = "Trojan:Win32/Terzib.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {7e 19 8b 4d fc 8a 91 90 01 04 8d 89 90 01 04 30 11 ff 45 fc 39 45 fc 7c e7 90 00 } //01 00 
		$a_01_1 = {44 45 4c 20 2f 51 20 2f 53 20 22 25 73 5c 68 69 73 74 6f 72 79 } //01 00  DEL /Q /S "%s\history
		$a_01_2 = {43 6f 6f 6b 69 65 3a 20 2f 73 65 61 72 63 68 3f 68 6c 3d 65 6e 3d 71 3d } //00 00  Cookie: /search?hl=en=q=
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Terzib_A_3{
	meta:
		description = "Trojan:Win32/Terzib.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 45 4c 20 2f 51 20 2f 53 20 22 25 73 5c 68 69 73 74 6f 72 79 } //01 00  DEL /Q /S "%s\history
		$a_01_1 = {43 6f 6f 6b 69 65 3a 20 2f 73 65 61 72 63 68 3f 68 6c 3d 65 6e 3d 71 3d } //01 00  Cookie: /search?hl=en=q=
		$a_03_2 = {c7 01 ff 55 55 ff 8b 95 24 f9 ff ff c7 42 04 00 00 00 00 8b 85 24 f9 ff ff c6 40 08 00 81 7d c0 00 60 00 00 7d 18 8b 8d 24 f9 ff ff 66 c7 41 0e ff ff c7 90 01 04 00 01 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}