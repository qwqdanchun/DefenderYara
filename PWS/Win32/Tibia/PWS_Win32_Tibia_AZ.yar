
rule PWS_Win32_Tibia_AZ{
	meta:
		description = "PWS:Win32/Tibia.AZ,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {54 69 62 69 61 43 6c 69 65 6e 74 } //03 00 
		$a_01_1 = {63 3a 5c 70 6c 69 6b 2e 65 78 65 } //01 00 
		$a_01_2 = {49 6e 74 65 72 6e 61 6c 47 65 74 57 69 6e 64 6f 77 54 65 78 74 } //00 00 
	condition:
		any of ($a_*)
 
}