
rule VirTool_Win32_VBInject_PI_bit{
	meta:
		description = "VirTool:Win32/VBInject.PI!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {34 00 61 00 73 00 73 00 64 00 68 00 67 00 71 00 77 00 } //01 00  4assdhgqw
		$a_01_1 = {71 00 77 00 65 00 74 00 79 00 61 00 73 00 64 00 } //01 00  qwetyasd
		$a_01_2 = {6b 00 68 00 61 00 72 00 61 00 } //01 00  khara
		$a_01_3 = {5c 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 52 00 6f 00 61 00 6d 00 69 00 6e 00 67 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 } //01 00  \AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\
		$a_01_4 = {63 00 63 00 61 00 71 00 77 00 65 00 73 00 61 00 64 00 61 00 61 00 } //00 00  ccaqwesadaa
	condition:
		any of ($a_*)
 
}