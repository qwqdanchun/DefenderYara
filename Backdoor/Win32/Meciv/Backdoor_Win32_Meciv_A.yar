
rule Backdoor_Win32_Meciv_A{
	meta:
		description = "Backdoor:Win32/Meciv.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 4d 69 63 72 6f 73 6f 66 74 20 4f 66 66 69 63 65 20 55 70 64 61 74 65 00 } //01 00 
		$a_01_1 = {69 6e 65 74 2e 64 6c 6c 00 } //02 00 
		$a_00_2 = {2f 74 72 61 6e 64 6f 63 73 2f 6e 65 74 73 74 61 74 } //01 00  /trandocs/netstat
		$a_01_3 = {65 6c 64 6e 61 48 65 73 6f 6c 43 74 65 6e 72 65 74 6e 49 00 } //01 00  汥湤䡡獥汯瑃湥敲湴I
		$a_01_4 = {73 79 73 33 32 74 69 6d 65 2e 69 6e 69 00 } //01 00 
		$a_01_5 = {5c 69 70 6f 70 2e 64 6c 6c 00 } //02 00 
		$a_01_6 = {2f 74 72 61 6e 64 6f 63 73 2f 6d 6d 2f } //01 00  /trandocs/mm/
		$a_01_7 = {66 65 6c 69 78 6e 65 77 6c 79 2e 63 6f 6d } //00 00  felixnewly.com
	condition:
		any of ($a_*)
 
}