
rule PWS_Win32_Lineage_CC{
	meta:
		description = "PWS:Win32/Lineage.CC,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 05 00 "
		
	strings :
		$a_02_0 = {be d0 42 00 10 56 57 57 ff 15 90 01 01 20 00 10 3b c7 89 45 f8 90 00 } //05 00 
		$a_01_1 = {56 49 52 55 53 5f 41 53 4d 41 50 49 4e 47 5f 58 5a 41 53 44 57 52 54 54 59 45 45 57 44 38 32 34 37 33 4d } //01 00 
		$a_00_2 = {43 72 65 61 74 65 4d 75 74 65 78 41 } //01 00 
		$a_00_3 = {4f 70 65 6e 4d 75 74 65 78 41 } //00 00 
	condition:
		any of ($a_*)
 
}