
rule PWS_Win32_Dozmot_D{
	meta:
		description = "PWS:Win32/Dozmot.D,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0a 00 00 02 00 "
		
	strings :
		$a_00_0 = {6e 61 6d 65 3d 22 74 72 61 63 6b 64 61 74 61 22 3b } //02 00  name="trackdata";
		$a_00_1 = {6e 61 6d 65 3d 22 73 75 62 6d 69 74 74 65 64 22 } //01 00  name="submitted"
		$a_00_2 = {00 69 73 6f 6e 6c 69 6e 65 00 } //01 00  椀潳汮湩e
		$a_00_3 = {00 2f 66 6c 61 73 68 2e 61 73 70 } //02 00 
		$a_00_4 = {00 33 36 30 53 45 2e 65 78 65 00 } //02 00 
		$a_00_5 = {00 26 7a 74 3d 73 75 63 63 6d 62 68 00 } //02 00 
		$a_00_6 = {2d 2d 2d 2d 2d 2d 2d 2d 2d 37 62 34 61 36 64 31 35 38 63 39 } //01 00  ---------7b4a6d158c9
		$a_00_7 = {00 61 63 74 69 6f 6e 3d 75 70 26 } //02 00 
		$a_03_8 = {42 4d 89 5c 24 90 02 0b c7 44 24 90 01 01 36 00 00 00 ff 90 00 } //02 00 
		$a_03_9 = {f7 ff ff 5c c6 85 90 01 01 f7 ff ff 63 c6 85 90 01 01 f7 ff ff 75 c6 85 90 01 01 f7 ff ff 72 c6 85 90 01 01 f7 ff ff 72 c6 85 90 01 01 f7 ff ff 65 c6 85 90 01 01 f7 ff ff 6e c6 85 90 01 01 f7 ff ff 74 c6 85 90 01 01 f7 ff ff 73 c6 85 90 01 01 f7 ff ff 65 c6 85 90 01 01 f7 ff ff 72 c6 85 90 01 01 f7 ff ff 76 c6 85 90 01 01 f7 ff ff 65 c6 85 90 01 01 f7 ff ff 72 c6 85 90 01 01 f7 ff ff 2e c6 85 90 01 01 f7 ff ff 69 c6 85 90 01 01 f7 ff ff 6e c6 85 90 01 01 f7 ff ff 69 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}