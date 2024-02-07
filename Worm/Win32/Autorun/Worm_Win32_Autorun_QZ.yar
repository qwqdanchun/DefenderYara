
rule Worm_Win32_Autorun_QZ{
	meta:
		description = "Worm:Win32/Autorun.QZ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 00 75 00 63 00 6b 00 72 00 69 00 73 00 69 00 6e 00 67 00 } //01 00  fuckrising
		$a_01_1 = {41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  AutoRun.inf
		$a_01_2 = {65 00 6d 00 61 00 69 00 6c 00 66 00 6f 00 72 00 6d 00 73 00 2f 00 65 00 6d 00 61 00 69 00 6c 00 5f 00 61 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 61 00 73 00 70 00 3f 00 73 00 65 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 61 00 62 00 6f 00 75 00 74 00 26 00 73 00 65 00 63 00 74 00 69 00 6f 00 6e 00 62 00 61 00 6e 00 6e 00 65 00 72 00 3d 00 62 00 61 00 6e 00 6e 00 65 00 72 00 5f 00 61 00 62 00 6f 00 75 00 74 00 2e 00 6a 00 70 00 67 00 26 00 65 00 6d 00 61 00 69 00 6c 00 3d 00 } //01 00  emailforms/email_action.asp?section=about&sectionbanner=banner_about.jpg&email=
		$a_01_3 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 53 00 79 00 73 00 57 00 69 00 6e 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //00 00  shell\open\command=SysWin32.exe
	condition:
		any of ($a_*)
 
}