
rule Backdoor_Win32_Zegost_BE{
	meta:
		description = "Backdoor:Win32/Zegost.BE,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 6c 6f 62 61 6c 5c 61 69 72 20 25 64 00 } //01 00  汇扯污慜物┠d
		$a_01_1 = {4b 42 44 4c 6f 67 65 72 00 } //01 00 
		$a_01_2 = {2c 48 69 67 68 53 79 73 74 65 6d 20 25 73 00 } //01 00 
		$a_01_3 = {65 78 65 2e 64 6d 63 5c 00 } //01 00 
		$a_01_4 = {5b 45 58 45 43 55 54 45 5f 6b 65 79 5d 00 } //00 00  䕛䕘啃䕔歟祥]
	condition:
		any of ($a_*)
 
}