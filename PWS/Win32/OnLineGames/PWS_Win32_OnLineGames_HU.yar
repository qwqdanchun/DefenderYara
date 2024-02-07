
rule PWS_Win32_OnLineGames_HU{
	meta:
		description = "PWS:Win32/OnLineGames.HU,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0a 00 00 01 00 "
		
	strings :
		$a_00_0 = {6b 69 63 6b 2e 61 73 68 78 3f } //01 00  kick.ashx?
		$a_00_1 = {62 61 6e 6b 70 61 73 73 77 6f 72 64 2e 61 73 70 78 3f 75 73 65 72 6e 61 6d 65 3d } //01 00  bankpassword.aspx?username=
		$a_00_2 = {63 61 73 68 2e 61 73 70 78 3f } //01 00  cash.aspx?
		$a_00_3 = {79 75 61 6e 62 61 6f 2e 61 73 70 78 3f } //01 00  yuanbao.aspx?
		$a_00_4 = {6d 69 62 61 6f 70 69 63 74 75 72 65 2e 61 73 70 78 3f 75 73 65 72 6e 61 6d 65 3d } //01 00  mibaopicture.aspx?username=
		$a_00_5 = {6d 69 62 61 6f 2e 61 73 70 78 3f 75 73 65 72 6e 61 6d 65 3d } //01 00  mibao.aspx?username=
		$a_00_6 = {26 66 69 72 73 74 3d 00 6d 69 62 61 6f 2e 61 73 70 78 3f 75 73 65 72 6e 61 6d 65 3d } //01 00 
		$a_02_7 = {26 72 61 6e 6b 3d 90 02 05 26 70 77 64 3d 90 02 05 26 75 73 65 72 6e 61 6d 65 3d 90 02 05 26 73 65 72 76 65 72 3d 90 00 } //01 00 
		$a_00_8 = {71 71 6c 6f 67 69 6e 2e 65 78 65 } //01 00  qqlogin.exe
		$a_00_9 = {48 6f 73 74 3a 20 69 6c 6f 76 65 64 78 63 35 2e 62 6c 6f 67 2e 31 36 33 2e 63 6f 6d } //00 00  Host: ilovedxc5.blog.163.com
	condition:
		any of ($a_*)
 
}