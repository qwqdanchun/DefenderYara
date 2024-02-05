
rule Trojan_Win32_Delwin_F{
	meta:
		description = "Trojan:Win32/Delwin.F,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6f 70 79 20 2f 79 20 25 30 20 2a 2e 6a 70 65 67 } //01 00 
		$a_01_1 = {64 65 6c 20 2f 71 20 2f 73 20 2f 66 20 43 3a 5c 2a 2e 73 79 73 } //01 00 
		$a_01_2 = {61 73 73 6f 63 20 2e 6d 70 33 3d 62 61 74 66 69 6c 65 } //00 00 
	condition:
		any of ($a_*)
 
}