
rule Worm_Win32_Stepar_gen_B{
	meta:
		description = "Worm:Win32/Stepar.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0b 00 00 02 00 "
		
	strings :
		$a_02_0 = {f3 a5 89 44 24 5c 89 44 24 70 89 44 24 74 89 44 24 78 89 44 24 7c 8d 44 24 10 50 68 3f 00 0f 00 8d 8c 24 20 01 00 00 6a 00 51 68 02 00 00 80 66 a5 c7 44 24 4c 90 01 04 c7 44 24 50 90 01 04 c7 44 24 54 90 01 04 c7 44 24 58 90 01 04 c7 44 24 5c 90 01 04 c7 44 24 60 90 01 04 c7 44 24 64 90 01 04 c7 44 24 68 90 01 04 c7 44 24 6c 90 01 04 c7 44 24 74 90 01 04 c7 44 24 78 90 01 04 c7 44 24 7c 90 01 04 c7 84 24 80 00 00 00 90 01 04 ff d3 90 00 } //02 00 
		$a_02_1 = {8d 4c 24 20 c6 44 24 20 57 c6 44 24 21 49 68 90 01 04 51 c6 44 24 2a 4e ff d6 8d 94 24 98 00 00 00 68 90 01 04 52 ff d6 90 00 } //02 00 
		$a_02_2 = {8b 4c 24 0c 6a 21 68 21 4e 00 00 51 50 ff 15 90 01 04 5f 33 c0 5e c2 10 00 90 00 } //01 00 
		$a_00_3 = {3c 69 66 72 61 6d 65 20 73 72 63 3d 33 44 63 69 64 3a 25 73 20 68 65 69 67 68 74 3d 33 44 30 20 77 69 64 74 68 3d 33 44 30 3e } //01 00  <iframe src=3Dcid:%s height=3D0 width=3D0>
		$a_00_4 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 6f 63 74 65 74 2d 73 74 72 65 61 6d 3b 20 6e 61 6d 65 3d 22 25 73 22 } //01 00  Content-Type: application/octet-stream; name="%s"
		$a_00_5 = {4d 6f 7a 69 6c 6c 61 57 69 6e 64 6f 77 43 6c 61 73 73 } //01 00  MozillaWindowClass
		$a_00_6 = {4f 75 74 6c 6f 6f 6b 20 45 78 70 72 65 73 73 20 42 72 6f 77 73 65 72 20 43 6c 61 73 73 } //01 00  Outlook Express Browser Class
		$a_00_7 = {54 4d 61 69 6c 65 72 46 6f 72 6d } //01 00  TMailerForm
		$a_00_8 = {44 6f 77 6e 6c 6f 61 64 44 69 72 } //01 00  DownloadDir
		$a_00_9 = {53 79 73 74 65 6d 20 52 65 63 6f 76 65 72 79 20 41 67 65 6e 74 } //01 00  System Recovery Agent
		$a_00_10 = {53 6f 66 74 77 61 72 65 5c 4b 61 7a 61 61 5c 4c 6f 63 61 6c 43 6f 6e 74 65 6e 74 } //00 00  Software\Kazaa\LocalContent
	condition:
		any of ($a_*)
 
}