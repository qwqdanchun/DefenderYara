
rule Worm_Win32_VB_AA_MTB{
	meta:
		description = "Worm:Win32/VB.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 48 45 4c 4c 33 32 2e 44 4c 4c } //01 00  SHELL32.DLL
		$a_00_1 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_02_2 = {8b 45 08 ff 30 e8 90 01 04 8b 4d 80 03 8d 90 01 02 ff ff 8a 18 32 19 ff b5 90 01 02 ff ff 8b 45 08 ff 30 e8 90 01 04 88 18 eb 02 eb 90 01 01 e9 90 01 02 ff ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}