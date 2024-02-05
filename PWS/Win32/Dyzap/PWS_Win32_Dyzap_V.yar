
rule PWS_Win32_Dyzap_V{
	meta:
		description = "PWS:Win32/Dyzap.V,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {8d 96 fe fe ff 7f 85 d2 74 22 0f b7 14 0f 66 85 d2 74 19 66 89 11 83 c1 02 4e 75 e4 } //01 00 
		$a_01_1 = {2e 73 6f 00 2e 74 6b 00 2e 63 6e 00 2e 68 6b 00 2e 69 6e } //01 00 
		$a_01_2 = {76 6e 63 74 00 00 00 00 67 76 6e 63 } //01 00 
		$a_01_3 = {43 6c 69 65 6e 74 53 65 74 4d 6f 64 75 6c 65 00 56 6e 63 53 74 61 72 74 53 65 72 76 65 72 } //01 00 
		$a_01_4 = {5c 00 45 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 73 00 5c 00 45 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 73 00 00 00 00 00 66 00 69 00 6c 00 65 00 2e 00 64 00 61 00 74 00 } //00 00 
		$a_00_5 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}