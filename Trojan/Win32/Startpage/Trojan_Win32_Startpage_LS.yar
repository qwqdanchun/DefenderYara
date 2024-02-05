
rule Trojan_Win32_Startpage_LS{
	meta:
		description = "Trojan:Win32/Startpage.LS,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 44 65 6e 79 4f 6e 46 69 6c 65 00 49 6e 74 65 72 6e 65 74 53 68 6f 72 74 63 75 74 00 55 52 4c 00 68 74 74 70 3a 2f 2f 77 77 77 2e 67 6f 32 30 30 30 2e 63 6e 2f 3f 39 62 31 00 } //01 00 
		$a_01_1 = {00 43 6c 65 61 72 4f 6e 46 69 6c 65 00 68 74 74 70 3a 2f 2f 62 75 79 2e 68 61 6f 74 65 2e 63 6f 6d 2f 3f 00 } //01 00 
		$a_01_2 = {5c 74 65 6d 67 5f 74 6d 70 2e 62 61 74 00 3a 70 70 00 31 33 00 31 30 00 73 6c 65 65 70 20 35 30 30 00 64 65 6c 20 } //00 00 
	condition:
		any of ($a_*)
 
}