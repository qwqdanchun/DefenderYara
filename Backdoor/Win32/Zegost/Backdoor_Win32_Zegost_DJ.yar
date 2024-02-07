
rule Backdoor_Win32_Zegost_DJ{
	meta:
		description = "Backdoor:Win32/Zegost.DJ,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 6f 6d 6d 6f 6e 20 46 69 6c 65 73 5c 73 76 63 63 68 6f 73 74 2e 65 78 65 00 } //01 00 
		$a_01_1 = {50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 5c 73 65 72 76 65 72 2e 65 78 65 00 } //01 00 
		$a_01_2 = {5c 73 79 73 6c 6f 67 2e 64 61 74 00 } //01 00 
		$a_01_3 = {6e 61 6d 65 73 65 72 76 65 72 20 3d 20 25 73 } //05 00  nameserver = %s
		$a_03_4 = {8a 14 08 80 c2 90 01 01 80 f2 90 01 01 88 14 08 40 3b c6 7c ef 90 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 6e 
	condition:
		any of ($a_*)
 
}