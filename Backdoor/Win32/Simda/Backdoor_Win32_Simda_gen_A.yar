
rule Backdoor_Win32_Simda_gen_A{
	meta:
		description = "Backdoor:Win32/Simda.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 06 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 00 69 00 67 00 68 00 65 00 73 00 74 00 41 00 76 00 61 00 69 00 6c 00 61 00 62 00 6c 00 65 00 } //01 00  HighestAvailable
		$a_01_1 = {2f 00 52 00 75 00 6e 00 4c 00 65 00 76 00 65 00 6c 00 } //01 00  /RunLevel
		$a_01_2 = {41 00 63 00 74 00 69 00 6f 00 6e 00 73 00 20 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 3d 00 22 00 4c 00 6f 00 63 00 61 00 6c 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  Actions Context="LocalSystem
		$a_00_3 = {77 76 3d 25 73 26 75 69 64 3d 25 64 26 6c 6e 67 3d 25 73 26 6d 69 64 3d 25 73 26 72 65 73 3d 25 73 26 76 3d 25 30 38 58 } //01 00  wv=%s&uid=%d&lng=%s&mid=%s&res=%s&v=%08X
		$a_00_4 = {63 6f 6e 74 72 6f 6c 6c 65 72 3d 68 61 73 68 26 6d 69 64 3d } //01 00  controller=hash&mid=
		$a_00_5 = {24 25 73 26 63 6f 6e 74 72 6f 6c 6c 65 72 3d 73 69 67 6e 26 64 61 74 61 3d 25 73 26 6d 69 64 3d 25 73 24 } //01 00  $%s&controller=sign&data=%s&mid=%s$
		$a_00_6 = {76 3d 73 70 66 31 20 61 20 6d 78 20 69 70 34 3a 25 64 2e 25 64 2e 25 64 2e 25 64 2f 25 64 20 3f 61 6c 6c } //01 00  v=spf1 a mx ip4:%d.%d.%d.%d/%d ?all
		$a_01_7 = {8b 75 08 74 15 32 06 0f b6 d0 c1 e8 08 } //02 00 
		$a_03_8 = {8b 45 f8 6a 01 ff 30 6a 00 ff 15 90 01 04 85 c0 90 00 } //02 00 
		$a_01_9 = {83 78 0c 02 50 74 0b } //02 00 
		$a_01_10 = {50 6a ff 68 e8 03 00 00 ff 75 fc 6a 01 6a 00 ff 15 } //02 00 
		$a_01_11 = {3d ea 00 00 00 } //04 00 
		$a_01_12 = {89 04 8a c7 45 f4 74 30 30 77 b8 ff ff ff ff } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Simda_gen_A_2{
	meta:
		description = "Backdoor:Win32/Simda.gen!A!!Simda.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {47 6c 6f 62 c7 45 90 01 01 61 6c 5c 4d c7 45 90 01 01 69 63 72 6f c7 45 90 01 01 73 6f 66 74 c7 45 90 01 01 53 79 73 65 c7 45 90 01 01 6e 74 65 72 c7 45 90 01 01 47 61 74 65 66 c7 90 01 01 f4 90 01 01 00 ff 15 90 00 } //01 00 
		$a_00_1 = {26 63 6f 6d 6d 61 6e 64 3d 62 63 5f 61 63 74 69 76 61 74 65 26 73 74 61 74 75 73 3d } //01 00  &command=bc_activate&status=
		$a_00_2 = {64 61 62 65 74 72 65 73 77 65 35 70 75 70 68 45 67 61 77 72 65 64 65 33 72 65 73 77 75 73 61 } //01 00  dabetreswe5puphEgawrede3reswusa
		$a_00_3 = {63 6f 6d 6d 61 6e 64 3d 69 6e 6a 65 63 74 26 64 61 74 61 3d 00 } //01 00 
		$a_00_4 = {63 6f 6d 6d 61 6e 64 3d 62 63 5f 61 63 74 69 76 61 74 65 26 69 70 3d 00 26 70 6f 72 74 3d 00 00 } //05 00 
	condition:
		any of ($a_*)
 
}