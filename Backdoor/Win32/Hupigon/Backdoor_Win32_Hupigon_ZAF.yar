
rule Backdoor_Win32_Hupigon_ZAF{
	meta:
		description = "Backdoor:Win32/Hupigon.ZAF,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 09 00 00 05 00 "
		
	strings :
		$a_01_0 = {42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //01 00  Borland\Delphi\RTL
		$a_00_1 = {00 77 69 6e 64 6e 73 2e 69 6e 69 00 } //01 00 
		$a_00_2 = {00 62 65 69 7a 68 75 00 } //01 00  戀楥桺u
		$a_00_3 = {00 67 6f 6f 67 6c 65 63 65 2e 65 78 65 00 } //01 00 
		$a_00_4 = {00 4c 49 54 41 4f 2e 69 6e 69 00 } //01 00 
		$a_00_5 = {00 59 65 73 6e 6f 73 65 72 76 65 72 00 } //01 00 
		$a_00_6 = {00 2e 33 33 32 32 2e 6f 72 67 3a 00 } //01 00  ⸀㌳㈲漮杲:
		$a_00_7 = {00 73 65 72 6e 61 6d 65 00 } //01 00 
		$a_00_8 = {72 77 78 5f 62 79 65 } //00 00  rwx_bye
	condition:
		any of ($a_*)
 
}