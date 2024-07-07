
rule Trojan_BAT_Bladabindi_V_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.V!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_81_0 = {4f 6e 65 44 72 69 76 65 2e 43 53 47 4f 5f 45 52 52 2e 72 65 73 6f 75 72 63 65 73 } //1 OneDrive.CSGO_ERR.resources
		$a_81_1 = {24 61 65 63 64 36 63 31 63 2d 62 64 66 38 2d 34 32 34 35 2d 61 37 66 34 2d 37 38 39 32 37 66 64 35 37 38 63 64 } //1 $aecd6c1c-bdf8-4245-a7f4-78927fd578cd
		$a_03_2 = {50 68 6f 65 6e 69 78 5c 73 6f 75 72 63 65 5c 72 65 70 6f 73 5c 4f 6e 65 44 72 69 76 65 5c 4f 6e 65 44 72 69 76 65 5c 6f 62 6a 5c 90 02 08 5c 4f 6e 65 44 72 69 76 65 2e 70 64 62 90 00 } //1
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 41 00 70 00 70 00 72 00 6f 00 76 00 65 00 64 00 5c 00 5c 00 52 00 75 00 6e 00 } //1 Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\StartupApproved\\Run
		$a_81_4 = {67 65 74 5f 50 72 6f 64 75 63 74 4e 61 6d 65 } //1 get_ProductName
		$a_81_5 = {47 65 74 50 72 6f 63 65 73 73 65 73 42 79 4e 61 6d 65 } //1 GetProcessesByName
		$a_81_6 = {67 65 74 5f 53 74 61 72 74 75 70 50 61 74 68 } //1 get_StartupPath
		$a_81_7 = {74 69 6d 65 72 31 5f 54 69 63 6b } //1 timer1_Tick
		$a_81_8 = {53 65 74 41 75 74 6f 52 75 6e } //1 SetAutoRun
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=9
 
}