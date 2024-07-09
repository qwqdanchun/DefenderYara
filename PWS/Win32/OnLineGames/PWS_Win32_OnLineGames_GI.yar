
rule PWS_Win32_OnLineGames_GI{
	meta:
		description = "PWS:Win32/OnLineGames.GI,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 "
		
	strings :
		$a_03_0 = {6d 50 56 c6 45 ?? 69 c6 45 ?? 62 c6 45 ?? 61 c6 45 ?? 6f c6 45 ?? 2e c6 45 ?? 61 c6 45 ?? 73 } //2
		$a_03_1 = {25 50 c6 45 ?? 73 c6 45 ?? 3f c6 45 ?? 61 c6 45 ?? 63 c6 45 ?? 74 c6 45 ?? 69 c6 45 ?? 6f c6 45 ?? 6e c6 45 ?? 3d } //2
		$a_03_2 = {8b c9 c6 45 ?? 3f c6 45 ?? 61 c6 45 ?? 3d c6 45 ?? 25 c6 45 ?? 73 c6 45 ?? 26 c6 45 ?? 73 c6 45 ?? 3d c6 45 ?? 25 c6 45 ?? 73 c6 45 ?? 26 } //2
		$a_03_3 = {33 db c6 45 ?? 45 c6 45 ?? 78 c6 45 ?? 70 c6 45 ?? 6c c6 45 ?? 6f c6 45 ?? 72 c6 45 ?? 65 c6 45 ?? 72 c6 45 ?? 2e c6 45 ?? 65 } //1
		$a_01_4 = {3f 61 3d 25 73 26 73 3d 25 73 26 75 3d 25 73 26 70 3d 25 73 } //1 ?a=%s&s=%s&u=%s&p=%s
		$a_01_5 = {70 69 6e 3d 25 73 } //1 pin=%s
		$a_01_6 = {20 5f 5f 25 73 5f 25 73 5f 25 64 5f 5f } //1  __%s_%s_%d__
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=4
 
}