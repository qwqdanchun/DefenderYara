
rule Backdoor_Win32_Seclogon_A_dll{
	meta:
		description = "Backdoor:Win32/Seclogon.A!dll,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 53 79 73 74 65 6d 33 32 5c 73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b 20 77 69 6e 73 65 63 6c 6f 67 6f 6e 00 } //01 00 
		$a_01_1 = {73 63 20 63 6f 6e 66 69 67 20 55 49 30 44 65 74 65 63 74 20 73 74 61 72 74 3d 20 64 69 73 61 62 6c 65 64 00 } //01 00 
		$a_03_2 = {c7 43 04 02 00 00 00 c7 43 08 20 00 00 00 c7 43 0c ff 01 0f 00 c7 43 10 01 00 00 00 8d 43 14 ba 90 01 04 e8 90 01 04 8d 43 18 ba 90 01 04 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}