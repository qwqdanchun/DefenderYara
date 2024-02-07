
rule HackTool_Win32_Yahooboot_D{
	meta:
		description = "HackTool:Win32/Yahooboot.D,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 03 00 00 04 00 "
		
	strings :
		$a_01_0 = {59 00 6f 00 75 00 20 00 74 00 72 00 79 00 20 00 74 00 6f 00 20 00 62 00 6f 00 6f 00 74 00 20 00 74 00 68 00 65 00 20 00 63 00 72 00 65 00 61 00 74 00 6f 00 72 00 20 00 6f 00 66 00 20 00 74 00 68 00 69 00 73 00 20 00 62 00 6f 00 6f 00 74 00 65 00 72 00 20 00 21 00 21 00 21 00 20 00 62 00 79 00 65 00 20 00 21 00 21 00 21 00 } //02 00  You try to boot the creator of this booter !!! bye !!!
		$a_01_1 = {70 00 73 00 79 00 63 00 68 00 6f 00 5f 00 6c 00 6f 00 67 00 69 00 63 00 36 00 36 00 36 00 } //02 00  psycho_logic666
		$a_01_2 = {53 00 74 00 61 00 74 00 75 00 73 00 3a 00 42 00 6f 00 74 00 20 00 4e 00 6f 00 74 00 20 00 4c 00 6f 00 67 00 65 00 64 00 20 00 49 00 6e 00 } //00 00  Status:Bot Not Loged In
	condition:
		any of ($a_*)
 
}