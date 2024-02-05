
rule PWS_Win32_Qqhook_gen_A{
	meta:
		description = "PWS:Win32/Qqhook.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0c 00 05 00 00 03 00 "
		
	strings :
		$a_00_0 = {51 51 48 6f 6f 6b } //03 00 
		$a_01_1 = {4e 75 6d 62 65 72 3d 00 ff ff ff ff 0a 00 00 00 26 50 61 73 73 57 6f 72 64 3d 00 00 ff ff ff ff 04 00 00 00 26 } //03 00 
		$a_00_2 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 77 77 2d 66 6f 72 6d 2d 75 72 6c 65 6e 63 6f 64 65 64 } //03 00 
		$a_00_3 = {48 6f 6f 6b 43 6c 61 73 73 } //01 00 
		$a_00_4 = {71 71 2e 63 6f 6d } //00 00 
	condition:
		any of ($a_*)
 
}