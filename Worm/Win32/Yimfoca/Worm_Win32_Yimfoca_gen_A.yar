
rule Worm_Win32_Yimfoca_gen_A{
	meta:
		description = "Worm:Win32/Yimfoca.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 69 6d 3a 67 6f 69 6d 3f 73 63 72 65 65 6e 6e 61 6d 65 3d 25 73 26 6d 65 73 73 61 67 65 3d 25 73 } //01 00  aim:goim?screenname=%s&message=%s
		$a_01_1 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 20 68 74 74 70 3a 2f 2f 62 72 6f 77 73 65 75 73 65 72 73 2e 6d 79 73 70 61 63 65 2e 63 6f 6d 2f 42 72 6f 77 73 65 2f 42 72 6f 77 73 65 2e 61 73 70 78 } //01 00  explorer.exe http://browseusers.myspace.com/Browse/Browse.aspx
		$a_01_2 = {2f 61 6a 61 78 2f 63 68 61 74 2f 73 65 6e 64 2e 70 68 70 3f 5f 5f 61 3d 31 } //01 00  /ajax/chat/send.php?__a=1
		$a_01_3 = {25 73 5c 77 69 6e 74 79 62 72 64 } //03 00  %s\wintybrd
		$a_03_4 = {83 7d f4 07 73 1b 8b 45 fc 03 45 f8 8b 4d f4 8a 00 32 81 90 01 04 8b 4d fc 03 4d f8 88 01 eb d8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}