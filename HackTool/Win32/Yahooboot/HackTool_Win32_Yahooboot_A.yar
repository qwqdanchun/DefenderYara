
rule HackTool_Win32_Yahooboot_A{
	meta:
		description = "HackTool:Win32/Yahooboot.A,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {2a 00 5c 00 41 00 43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 47 00 6f 00 64 00 20 00 6f 00 66 00 20 00 62 00 6f 00 6f 00 74 00 20 00 77 00 61 00 72 00 72 00 5c 00 73 00 6e 00 6f 00 6f 00 70 00 62 00 6f 00 6f 00 74 00 65 00 72 00 2e 00 76 00 62 00 70 00 } //01 00  *\AC:\Documents and Settings\Administrator\Desktop\God of boot warr\snoopbooter.vbp
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6f 00 70 00 69 00 2e 00 79 00 61 00 68 00 6f 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 3f 00 75 00 3d 00 } //01 00  http://opi.yahoo.com/online?u=
		$a_01_2 = {3c 00 6d 00 69 00 6e 00 67 00 6c 00 65 00 3e 00 3c 00 76 00 69 00 74 00 61 00 6c 00 69 00 74 00 79 00 20 00 65 00 78 00 70 00 69 00 72 00 65 00 2d 00 6d 00 69 00 6e 00 73 00 3d 00 22 00 34 00 38 00 30 00 22 00 20 00 74 00 3d 00 22 00 31 00 31 00 39 00 37 00 39 00 38 00 34 00 31 00 35 00 37 00 22 00 20 00 63 00 3d 00 22 00 31 00 30 00 30 00 22 00 3e 00 } //01 00  <mingle><vitality expire-mins="480" t="1197984157" c="100">
		$a_01_3 = {4c 00 6f 00 61 00 64 00 20 00 62 00 6f 00 74 00 73 00 20 00 4c 00 69 00 73 00 74 00 } //01 00  Load bots List
		$a_01_4 = {42 00 6f 00 6f 00 74 00 20 00 57 00 61 00 72 00 72 00 20 00 47 00 6f 00 6f 00 64 00 62 00 79 00 65 00 32 00 } //01 00  Boot Warr Goodbye2
		$a_01_5 = {53 00 74 00 61 00 74 00 75 00 73 00 3a 00 20 00 4c 00 6f 00 61 00 64 00 20 00 42 00 6f 00 74 00 73 00 20 00 4c 00 69 00 73 00 74 00 } //01 00  Status: Load Bots List
		$a_01_6 = {78 70 63 6f 6e 74 72 6f 6c 73 2e 6f 63 78 } //00 00  xpcontrols.ocx
	condition:
		any of ($a_*)
 
}