
rule Trojan_Win32_Ledap_gen_A{
	meta:
		description = "Trojan:Win32/Ledap.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 6c 75 67 69 6e 4d 61 69 6e 00 50 6c 75 67 69 6e 4e 61 6d 65 00 50 6c 75 67 69 6e 54 79 70 65 } //01 00 
		$a_01_1 = {46 00 49 00 4c 00 03 00 46 00 49 00 4e 00 00 00 } //01 00 
		$a_03_2 = {8b 45 50 c7 40 1c 90 01 04 8b 45 50 c7 40 5c 90 01 04 eb 0c bb 7a 27 00 00 90 00 } //01 00 
		$a_01_3 = {50 8b 06 50 8d 46 04 50 53 e8 } //00 00 
	condition:
		any of ($a_*)
 
}