
rule PWS_Win32_OnLineGames_MT{
	meta:
		description = "PWS:Win32/OnLineGames.MT,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {50 6a 40 6a 01 56 c7 44 24 14 00 00 00 00 ff 15 90 01 04 c6 06 e9 b8 01 00 00 00 8b 4c 24 0c 2b ce 83 e9 05 89 4e 01 5e 59 c2 08 00 90 00 } //01 00 
		$a_00_1 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 25 73 2c 44 57 } //01 00  rundll32.exe %s,DW
		$a_00_2 = {26 61 31 3d 25 73 26 61 32 3d 25 73 26 61 33 3d 25 73 26 61 34 3d 25 73 26 61 39 3d 25 73 26 61 36 3d 25 73 26 61 31 30 3d 25 73 26 61 31 31 3d 25 64 26 61 35 3d 25 73 26 61 37 3d 25 73 26 70 63 31 3d 25 73 26 70 63 32 3d 25 73 } //01 00  &a1=%s&a2=%s&a3=%s&a4=%s&a9=%s&a6=%s&a10=%s&a11=%d&a5=%s&a7=%s&pc1=%s&pc2=%s
		$a_00_3 = {77 6f 77 2e 65 78 65 } //01 00  wow.exe
		$a_00_4 = {44 69 73 6b 65 72 } //00 00  Disker
	condition:
		any of ($a_*)
 
}