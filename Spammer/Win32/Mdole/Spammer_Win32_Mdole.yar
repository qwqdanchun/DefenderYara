
rule Spammer_Win32_Mdole{
	meta:
		description = "Spammer:Win32/Mdole,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 00 6f 00 44 00 4d 00 38 00 35 00 35 00 } //01 00  LoDM855
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 37 00 33 00 2e 00 31 00 39 00 32 00 2e 00 31 00 38 00 32 00 2e 00 34 00 36 00 2f 00 7e 00 76 00 69 00 64 00 65 00 6f 00 73 00 2f 00 } //01 00  http://173.192.182.46/~videos/
		$a_01_2 = {64 00 65 00 66 00 61 00 75 00 6c 00 74 00 2e 00 61 00 73 00 70 00 78 00 3f 00 77 00 61 00 3d 00 77 00 73 00 69 00 67 00 6e 00 69 00 6e 00 31 00 2e 00 30 00 } //01 00  default.aspx?wa=wsignin1.0
		$a_01_3 = {64 00 65 00 66 00 61 00 75 00 6c 00 74 00 2e 00 61 00 73 00 70 00 78 00 3f 00 72 00 72 00 75 00 3d 00 69 00 6e 00 62 00 6f 00 78 00 } //01 00  default.aspx?rru=inbox
		$a_01_4 = {68 74 74 70 3a 2f 2f 6d 61 69 6c 2e 6c 69 76 65 2e 63 6f 6d 2f 3f 72 72 75 3d 63 6f 6e 74 61 63 74 73 } //01 00  http://mail.live.com/?rru=contacts
		$a_01_5 = {43 6f 6e 74 61 63 74 4d 61 69 6e 4c 69 67 68 74 2e 61 73 70 78 3f 43 6f 6e 74 61 63 74 73 53 6f 72 74 42 79 3d 46 69 6c 65 41 73 26 61 6d 70 3b 50 61 67 65 3d } //00 00  ContactMainLight.aspx?ContactsSortBy=FileAs&amp;Page=
	condition:
		any of ($a_*)
 
}