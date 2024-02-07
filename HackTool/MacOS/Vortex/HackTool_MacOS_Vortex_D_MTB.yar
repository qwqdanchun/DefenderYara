
rule HackTool_MacOS_Vortex_D_MTB{
	meta:
		description = "HackTool:MacOS/Vortex.D!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {2f 4f 64 79 73 73 65 79 2f 4f 64 79 73 73 65 79 2f 65 78 70 6c 6f 69 74 90 02 15 2e 63 90 00 } //01 00 
		$a_01_1 = {2f 6f 64 79 73 73 65 79 2f 6c 61 75 6e 63 68 6a 61 69 6c 62 72 65 61 6b } //01 00  /odyssey/launchjailbreak
		$a_01_2 = {2f 6f 64 79 73 73 65 79 2f 61 6d 66 69 64 65 62 69 6c 69 74 61 74 65 2e 70 6c 69 73 74 } //01 00  /odyssey/amfidebilitate.plist
		$a_01_3 = {6f 72 67 2e 63 6f 6f 6c 73 74 61 72 2e 6a 61 69 6c 62 72 65 61 6b 64 } //01 00  org.coolstar.jailbreakd
		$a_01_4 = {52 52 52 52 65 61 74 72 6d 70 65 20 39 61 66 69 6f 61 73 66 } //01 00  RRRReatrmpe 9afioasf
		$a_01_5 = {74 66 70 30 } //01 00  tfp0
		$a_01_6 = {74 61 72 64 79 30 6e } //00 00  tardy0n
	condition:
		any of ($a_*)
 
}