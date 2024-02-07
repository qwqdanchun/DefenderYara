
rule HackTool_BAT_Vahodon{
	meta:
		description = "HackTool:BAT/Vahodon,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 00 6a 00 2d 00 71 00 38 00 } //01 00  nj-q8
		$a_01_1 = {54 00 75 00 6e 00 69 00 73 00 69 00 61 00 20 00 52 00 41 00 54 00 } //01 00  Tunisia RAT
		$a_01_2 = {7c 00 42 00 61 00 77 00 61 00 6e 00 65 00 48 00 7c 00 } //01 00  |BawaneH|
		$a_01_3 = {4c 00 69 00 73 00 74 00 65 00 6e 00 69 00 6e 00 67 00 20 00 4f 00 6e 00 20 00 50 00 6f 00 72 00 74 00 20 00 3a 00 20 00 2d 00 2d 00 2d 00 2d 00 } //01 00  Listening On Port : ----
		$a_01_4 = {52 00 65 00 6d 00 6f 00 74 00 65 00 4b 00 61 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 54 00 6f 00 6f 00 6c 00 53 00 74 00 72 00 69 00 70 00 4d 00 65 00 6e 00 75 00 49 00 74 00 65 00 6d 00 } //00 00  RemoteKayloggerToolStripMenuItem
	condition:
		any of ($a_*)
 
}