
rule PWS_Win32_Prostor_gen_A{
	meta:
		description = "PWS:Win32/Prostor.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffc8 00 ffffffc8 00 02 00 00 64 00 "
		
	strings :
		$a_02_0 = {56 00 69 00 72 00 75 00 73 00 20 00 4d 00 61 00 6b 00 65 00 72 00 5c 00 56 00 69 00 72 00 75 00 73 00 20 00 4d 00 61 00 6b 00 65 00 72 00 5c 00 53 00 65 00 72 00 76 00 65 00 72 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 90 02 03 2e 00 76 00 62 00 70 00 90 00 } //64 00 
		$a_00_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //00 00  Software\Microsoft\Windows\Currentversion\Run
	condition:
		any of ($a_*)
 
}