
rule HackTool_BAT_Sabcat_A_bit{
	meta:
		description = "HackTool:BAT/Sabcat.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 2d 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 6e 00 65 00 74 00 } //01 00  program-update.net
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {5c 54 50 43 6c 61 73 73 4c 69 62 72 61 72 79 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 74 68 6f 73 74 33 32 2e 70 64 62 } //01 00  \TPClassLibrary\obj\Release\thost32.pdb
		$a_01_3 = {41 6e 74 69 76 69 72 4e 61 6d 65 4c 69 73 74 00 } //01 00  湁楴楶乲浡䱥獩t
		$a_01_4 = {41 64 64 49 6e 41 75 74 6f 53 74 61 72 74 00 } //01 00 
		$a_01_5 = {43 68 65 63 6b 41 6e 64 45 64 69 74 48 6f 73 74 73 00 } //00 00  桃捥䅫摮摅瑩潈瑳s
	condition:
		any of ($a_*)
 
}