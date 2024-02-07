
rule Trojan_BAT_Masslogger_MS_MTB{
	meta:
		description = "Trojan:BAT/Masslogger.MS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0d 00 00 01 00 "
		
	strings :
		$a_81_0 = {50 72 6f 66 65 73 73 69 6f 6e 61 6c 5f 45 64 69 74 6f 72 2e 46 69 6e 64 52 65 70 6c 61 63 65 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Professional_Editor.FindReplace.resources
		$a_81_1 = {50 72 6f 66 65 73 73 69 6f 6e 61 6c 5f 45 64 69 74 6f 72 2e 43 6f 72 65 4d 61 69 6e 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Professional_Editor.CoreMain.resources
		$a_81_2 = {73 76 61 65 54 6f 6f 6c 53 74 72 69 70 4d 65 6e 75 49 74 65 6d 5f 43 6c 69 63 6b } //01 00  svaeToolStripMenuItem_Click
		$a_81_3 = {43 6c 69 70 62 6f 61 72 64 43 6c 61 73 73 } //01 00  ClipboardClass
		$a_81_4 = {4e 65 78 74 46 69 6e 64 } //01 00  NextFind
		$a_81_5 = {52 54 42 4d 61 69 6e } //01 00  RTBMain
		$a_81_6 = {66 6c 64 46 69 6c 65 50 61 74 63 68 } //01 00  fldFilePatch
		$a_81_7 = {43 6f 6e 74 65 6e 74 43 68 61 6e 67 65 64 } //01 00  ContentChanged
		$a_81_8 = {66 6c 64 43 6f 6e 74 65 6e 74 } //01 00  fldContent
		$a_81_9 = {49 4e 49 4d 61 6e 61 67 65 72 } //01 00  INIManager
		$a_81_10 = {63 68 61 6e 67 65 54 6f 6f 6c 53 74 72 69 70 4d 65 6e 75 49 74 65 6d } //01 00  changeToolStripMenuItem
		$a_81_11 = {6f 70 65 6e 54 6f 6f 6c 53 74 72 69 70 4d 65 6e 75 49 74 65 6d } //01 00  openToolStripMenuItem
		$a_81_12 = {66 69 6c 65 54 6f 6f 6c 53 74 72 69 70 4d 65 6e 75 49 74 65 6d } //00 00  fileToolStripMenuItem
	condition:
		any of ($a_*)
 
}