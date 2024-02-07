
rule Trojan_Win32_Tacpud_A{
	meta:
		description = "Trojan:Win32/Tacpud.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 69 73 61 62 6c 65 5f 41 6c 6c 00 } //01 00  楄慳汢彥汁l
		$a_03_1 = {5b 00 52 00 43 00 6f 00 6e 00 5d 00 7c 00 90 02 10 5b 00 4e 00 65 00 77 00 5d 00 7c 00 90 02 10 5b 00 52 00 63 00 6f 00 6e 00 5d 00 7c 00 90 02 10 5b 00 44 00 6f 00 6e 00 65 00 5d 00 7c 00 90 00 } //01 00 
		$a_03_2 = {5b 00 4d 00 6f 00 76 00 65 00 5d 00 7c 00 90 02 10 41 00 43 00 54 00 90 02 10 5b 00 54 00 43 00 50 00 5d 00 7c 00 90 00 } //01 00 
		$a_03_3 = {5b 00 55 00 44 00 50 00 5d 00 7c 00 90 02 20 5b 00 48 00 54 00 54 00 5d 00 7c 00 90 02 10 38 00 30 00 90 00 } //01 00 
		$a_03_4 = {53 00 54 00 4f 00 50 00 90 02 10 5b 00 57 00 61 00 69 00 74 00 5d 00 7c 00 90 02 10 45 00 58 00 49 00 54 00 90 00 } //01 00 
		$a_03_5 = {5b 00 52 00 5d 00 7c 00 90 02 10 5b 00 4e 00 5d 00 7c 00 90 02 10 5b 00 44 00 90 02 20 4f 00 70 00 65 00 6e 00 90 02 10 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 90 00 } //00 00 
		$a_00_6 = {5d 04 00 } //00 3e 
	condition:
		any of ($a_*)
 
}