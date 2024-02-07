
rule Trojan_Win32_Tiny_O_MTB{
	meta:
		description = "Trojan:Win32/Tiny.O!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {42 72 65 61 6b 57 65 61 70 6f 6e 44 61 74 61 5f 72 65 6c 61 74 69 76 65 } //01 00  BreakWeaponData_relative
		$a_81_1 = {63 72 6d 70 6c 6f 67 67 65 72 5f 75 6e 69 76 65 72 73 61 6c } //01 00  crmplogger_universal
		$a_81_2 = {72 61 64 6d 69 72 5f 70 61 72 73 65 72 32 31 35 } //01 00  radmir_parser215
		$a_00_3 = {73 74 65 61 6c 5c 52 65 6c 65 61 73 65 5c 67 74 61 73 74 65 61 6c 2e 70 64 62 } //01 00  steal\Release\gtasteal.pdb
		$a_81_4 = {41 67 65 6e 74 20 53 42 55 } //01 00  Agent SBU
		$a_81_5 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //01 00  InternetOpenUrlA
		$a_81_6 = {49 6e 74 65 72 6e 65 74 43 72 65 61 74 65 55 72 6c 41 } //00 00  InternetCreateUrlA
	condition:
		any of ($a_*)
 
}