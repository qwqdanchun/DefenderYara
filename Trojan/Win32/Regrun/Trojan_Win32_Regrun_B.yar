
rule Trojan_Win32_Regrun_B{
	meta:
		description = "Trojan:Win32/Regrun.B,SIGNATURE_TYPE_PEHSTR,16 00 16 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {49 00 2a 00 5c 00 41 00 44 00 3a 00 5c 00 4d 00 79 00 20 00 44 00 6f 00 63 00 75 00 6d 00 65 00 74 00 73 00 5c 00 41 00 6c 00 6c 00 20 00 4d 00 79 00 20 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 5c 00 4d 00 75 00 72 00 6e 00 69 00 5c 00 56 00 69 00 72 00 75 00 73 00 20 00 52 00 6f 00 79 00 20 00 46 00 69 00 6e 00 61 00 6c 00 20 00 52 00 65 00 6c 00 65 00 61 00 73 00 65 00 5c 00 53 00 69 00 61 00 70 00 20 00 45 00 78 00 65 00 5c 00 52 00 6f 00 79 00 2e 00 56 00 42 00 50 00 } //05 00  I*\AD:\My Documets\All My Project\Murni\Virus Roy Final Release\Siap Exe\Roy.VBP
		$a_01_1 = {4c 00 61 00 75 00 6e 00 63 00 68 00 5f 00 55 00 33 00 } //05 00  Launch_U3
		$a_01_2 = {52 6f 79 00 41 50 49 00 46 75 6e 67 73 69 } //01 00  潒y偁I畆杮楳
		$a_01_3 = {53 65 74 46 69 6c 65 41 74 74 72 69 62 75 74 65 73 41 } //01 00  SetFileAttributesA
		$a_01_4 = {54 65 72 6d 69 6e 61 74 65 50 72 6f 63 65 73 73 } //00 00  TerminateProcess
	condition:
		any of ($a_*)
 
}