
rule PWS_Win32_OnLineGames_ZDA_dll{
	meta:
		description = "PWS:Win32/OnLineGames.ZDA!dll,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {b0 6c b1 78 88 44 24 ?? 88 44 24 ?? b0 6f c6 44 24 ?? 43 88 44 24 ?? 88 44 24 ?? 8d 44 24 ?? c6 44 24 ?? 61 50 56 c6 44 24 ?? 4e c6 44 24 ?? 65 } //1
		$a_03_1 = {8d 84 24 a0 00 00 00 c6 44 24 ?? 6d 50 68 04 01 00 00 c6 44 24 ?? 70 c6 44 24 ?? 63 c6 44 24 ?? 6f c6 44 24 ?? 72 c6 44 24 ?? 65 c6 44 24 ?? 2e c6 44 24 ?? 78 c6 44 24 ?? 00 ff 15 } //1
		$a_01_2 = {3f 75 73 3d 25 73 26 70 73 3d 25 73 26 6c 76 3d 25 64 26 71 75 3d 25 73 26 73 65 3d 25 73 } //1 ?us=%s&ps=%s&lv=%d&qu=%s&se=%s
		$a_01_3 = {3f 57 4f 57 49 44 3d 25 73 26 57 55 3d 25 73 26 57 50 3d 25 73 26 41 72 65 61 3d 25 73 26 53 59 53 3d 25 73 } //1 ?WOWID=%s&WU=%s&WP=%s&Area=%s&SYS=%s
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}