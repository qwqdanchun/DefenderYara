
rule Trojan_Win32_Wecorl_gen_A{
	meta:
		description = "Trojan:Win32/Wecorl.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {e8 0c 00 00 00 73 76 63 68 6f 73 74 2e 65 78 65 00 5e } //01 00 
		$a_01_1 = {e8 10 00 00 00 73 76 63 68 6f 73 74 2e 65 78 65 20 2a 43 65 00 90 ff 17 } //01 00 
		$a_03_2 = {e8 09 00 00 00 6e 74 66 73 2e 73 79 73 00 90 02 01 ff d6 90 00 } //01 00 
		$a_01_3 = {e8 18 00 00 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 44 72 6d 5c 00 68 02 00 00 80 } //00 00 
	condition:
		any of ($a_*)
 
}