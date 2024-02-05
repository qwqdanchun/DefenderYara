
rule SoftwareBundler_Win32_YourSiteBar{
	meta:
		description = "SoftwareBundler:Win32/YourSiteBar,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {2f 61 69 64 3a 25 69 20 2f 63 66 67 3a 25 73 20 2f 73 6f 66 74 3a 25 69 20 2f 76 6b 65 79 3a 25 73 20 2f 74 6b 65 79 3a 25 73 20 2f 74 6c 6f 63 6b 3a 25 73 20 2f 65 78 65 3a 25 73 } //02 00 
		$a_01_1 = {25 73 5c 6e 5f 25 73 2e 65 78 65 } //03 00 
		$a_00_2 = {25 73 3f 61 69 64 3d 25 69 26 63 66 67 3d 25 73 26 76 6b 65 79 3d 25 73 } //03 00 
		$a_01_3 = {79 73 62 5f 6d } //00 00 
	condition:
		any of ($a_*)
 
}