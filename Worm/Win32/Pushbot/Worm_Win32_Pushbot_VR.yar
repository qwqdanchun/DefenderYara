
rule Worm_Win32_Pushbot_VR{
	meta:
		description = "Worm:Win32/Pushbot.VR,SIGNATURE_TYPE_PEHSTR_EXT,5e 01 4a 01 0c 00 00 ffffffc8 00 "
		
	strings :
		$a_01_0 = {80 75 08 66 80 75 09 c8 f6 55 0a 80 75 0b 3f 8b 45 08 5d } //32 00 
		$a_01_1 = {7e 10 03 c6 80 30 66 ff 45 fc 8b 45 fc 3b 45 ec 7c f0 88 1c 30 } //1e 00 
		$a_01_2 = {78 68 70 63 5f 63 6f 6d 70 6f 73 65 72 69 64 3d 75 35 31 32 32 36 30 5f 33 26 78 68 70 63 5f 63 6f 6e 74 65 78 74 3d 68 6f 6d 65 26 78 68 70 63 } //1e 00  xhpc_composerid=u512260_3&xhpc_context=home&xhpc
		$a_01_3 = {4d 4d 41 50 5f 41 56 5f 7b 37 45 36 33 44 36 45 36 2d 35 37 31 31 2d 34 38 30 64 2d 39 39 41 30 2d 43 33 39 37 32 43 39 33 45 45 46 34 7d } //14 00  MMAP_AV_{7E63D6E6-5711-480d-99A0-C3972C93EEF4}
		$a_01_4 = {62 61 74 63 68 5b 30 5d 5b 74 69 6d 65 73 74 61 6d 70 5d 3d 31 33 33 33 39 39 35 36 38 30 39 35 35 } //14 00  batch[0][timestamp]=1333995680955
		$a_01_5 = {2d 31 37 38 32 36 39 35 36 36 36 25 34 30 6d 61 69 6c 2e 70 72 6f 6a 65 6b 74 69 74 61 6e 2e 63 6f 6d } //14 00  -1782695666%40mail.projektitan.com
		$a_01_6 = {63 6c 69 65 6e 74 5f 74 69 6d 65 3d 31 33 30 34 36 38 30 30 33 30 38 32 33 } //0a 00  client_time=1304680030823
		$a_01_7 = {2f 6d 65 2f 66 72 69 65 6e 64 73 3f 61 63 63 65 73 73 5f 74 6f 6b 65 6e 3d } //0a 00  /me/friends?access_token=
		$a_01_8 = {74 77 65 61 6b 2e 74 6f 6d 64 7a 6f 6e 2e 63 6f 6d } //0a 00  tweak.tomdzon.com
		$a_01_9 = {53 6b 79 70 65 43 6f 6e 74 72 6f 6c 41 50 49 44 69 73 63 6f 76 65 72 } //14 00  SkypeControlAPIDiscover
		$a_03_10 = {68 39 36 7d 4a e8 90 01 01 ff ff ff 59 85 c0 77 12 68 e6 02 3f e3 90 00 } //14 00 
		$a_03_11 = {68 d1 b1 a0 f8 e8 90 01 01 ff ff ff 59 85 c0 77 21 68 80 e1 c7 a6 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}