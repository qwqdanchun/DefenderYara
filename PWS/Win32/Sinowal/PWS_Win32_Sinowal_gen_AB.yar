
rule PWS_Win32_Sinowal_gen_AB{
	meta:
		description = "PWS:Win32/Sinowal.gen!AB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 1c 0f 31 25 ff 00 00 00 83 e2 00 8b 4d 0c } //01 00 
		$a_03_1 = {33 d2 b9 09 00 00 00 f7 f1 8b 54 95 90 01 01 52 68 04 01 00 00 68 90 01 04 e8 90 01 04 83 c4 10 85 c0 74 06 90 00 } //01 00 
		$a_01_2 = {81 39 50 45 00 00 75 1a 8b 55 fc 0f b7 42 04 3d 64 86 00 00 } //01 00 
		$a_01_3 = {0f b7 48 14 8d 54 0a 18 8b 45 fc 0f b7 48 06 6b c9 28 03 d1 } //01 00 
		$a_03_4 = {5b 81 eb 06 10 40 00 b8 26 10 40 00 03 c3 ff e0 90 09 06 00 90 90 e8 00 00 00 90 00 } //01 00 
		$a_01_5 = {2f 54 20 2f 67 72 61 6e 74 20 2a 53 2d 31 2d 31 2d 30 3a 46 } //01 00  /T /grant *S-1-1-0:F
		$a_01_6 = {26 69 74 61 67 3d 6f 64 79 26 71 3d 25 73 25 25 32 43 25 30 32 78 } //00 00  &itag=ody&q=%s%%2C%02x
	condition:
		any of ($a_*)
 
}