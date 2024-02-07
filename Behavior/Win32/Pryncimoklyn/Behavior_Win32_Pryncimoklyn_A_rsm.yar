
rule Behavior_Win32_Pryncimoklyn_A_rsm{
	meta:
		description = "Behavior:Win32/Pryncimoklyn.A!rsm,SIGNATURE_TYPE_PEHSTR_EXT,ffffff90 01 ffffff90 01 04 00 00 64 00 "
		
	strings :
		$a_01_0 = {5f 00 48 00 45 00 4c 00 50 00 5f 00 49 00 4e 00 53 00 54 00 52 00 55 00 43 00 54 00 49 00 4f 00 4e 00 2e 00 54 00 58 00 54 00 } //64 00  _HELP_INSTRUCTION.TXT
		$a_01_1 = {25 00 73 00 25 00 30 00 38 00 58 00 25 00 30 00 38 00 58 00 25 00 30 00 38 00 58 00 25 00 30 00 38 00 58 00 2e 00 4d 00 4f 00 4c 00 45 00 30 00 32 00 } //64 00  %s%08X%08X%08X%08X.MOLE02
		$a_01_2 = {76 73 73 61 64 6d 69 6e 2e 65 78 65 20 44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 41 6c 6c 20 2f 51 75 69 65 74 } //64 00  vssadmin.exe Delete Shadows /All /Quiet
		$a_01_3 = {21 00 21 00 21 00 20 00 59 00 6f 00 75 00 72 00 20 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 2d 00 49 00 44 00 3a 00 20 00 25 00 73 00 20 00 21 00 21 00 21 00 } //00 00  !!! Your DECRYPT-ID: %s !!!
	condition:
		any of ($a_*)
 
}