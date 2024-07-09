
rule Worm_Win32_Vobfus_ABD{
	meta:
		description = "Worm:Win32/Vobfus.ABD,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 "
		
	strings :
		$a_00_0 = {5c 00 77 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 73 00 2e 00 65 00 78 00 65 00 } //1 \winlogons.exe
		$a_00_1 = {5c 00 53 00 59 00 53 00 5f 00 52 00 65 00 63 00 6f 00 76 00 65 00 72 00 79 00 2e 00 65 00 78 00 65 00 } //1 \SYS_Recovery.exe
		$a_00_2 = {5c 00 73 00 79 00 73 00 44 00 61 00 74 00 61 00 2e 00 74 00 78 00 74 00 } //1 \sysData.txt
		$a_00_3 = {5f 00 6b 00 61 00 62 00 65 00 } //1 _kabe
		$a_02_4 = {53 00 74 00 61 00 72 00 74 00 75 00 70 00 [0-0a] 53 00 70 00 65 00 63 00 69 00 61 00 6c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 73 00 [0-0a] 25 00 74 00 65 00 6d 00 70 00 25 00 [0-0a] 45 00 78 00 70 00 61 00 6e 00 64 00 45 00 6e 00 76 00 69 00 72 00 6f 00 6e 00 6d 00 65 00 6e 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 73 00 } //1
		$a_00_5 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 6d 00 73 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im msconfig.exe
		$a_00_6 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 72 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im regedit.exe
		$a_00_7 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 61 00 76 00 69 00 72 00 61 00 5f 00 61 00 6e 00 74 00 69 00 76 00 69 00 72 00 5f 00 70 00 65 00 72 00 73 00 6f 00 6e 00 61 00 6c 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im avira_antivir_personal.exe
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=4
 
}