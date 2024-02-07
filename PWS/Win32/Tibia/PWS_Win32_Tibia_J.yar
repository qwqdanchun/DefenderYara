
rule PWS_Win32_Tibia_J{
	meta:
		description = "PWS:Win32/Tibia.J,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 06 00 00 0a 00 "
		
	strings :
		$a_00_0 = {54 69 62 69 61 2e 65 78 65 } //0a 00  Tibia.exe
		$a_00_1 = {77 77 77 2e 74 69 62 69 61 2e 73 74 65 61 6c 65 72 2e } //0a 00  www.tibia.stealer.
		$a_02_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 90 02 15 63 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 5c 90 02 15 2e 65 78 65 90 00 } //01 00 
		$a_00_3 = {26 61 63 63 6f 75 6e 74 3d } //01 00  &account=
		$a_00_4 = {26 68 61 73 6c 6f 3d } //01 00  &haslo=
		$a_00_5 = {26 6c 65 76 65 6c 3d } //00 00  &level=
	condition:
		any of ($a_*)
 
}