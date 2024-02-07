
rule Trojan_Win16_ShellHide_C{
	meta:
		description = "Trojan:Win16/ShellHide.C,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {3d 20 45 6e 76 69 72 6f 6e 28 } //02 00  = Environ(
		$a_03_1 = {46 6f 72 20 45 61 63 68 20 90 05 0e 0a 41 2d 5a 61 2d 7a 30 2d 39 5f 20 49 6e 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 50 61 72 61 67 72 61 70 68 73 90 00 } //03 00 
		$a_01_2 = {3d 20 53 68 65 6c 6c 28 76 62 48 48 2c 20 31 29 } //02 00  = Shell(vbHH, 1)
		$a_01_3 = {2e 52 61 6e 67 65 2e 54 65 78 74 } //03 00  .Range.Text
		$a_03_4 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 05 06 09 41 2d 5a 61 2d 7a 30 2d 39 28 90 1b 00 28 90 1b 00 28 90 1b 00 28 90 00 } //00 00 
		$a_00_5 = {5d 04 00 00 65 } //7e 03 
	condition:
		any of ($a_*)
 
}