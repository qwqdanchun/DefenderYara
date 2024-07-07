
rule Worm_BAT_Hukbro_A{
	meta:
		description = "Worm:BAT/Hukbro.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_03_0 = {5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 90 02 20 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_01_1 = {2f 00 67 00 65 00 74 00 66 00 69 00 6c 00 65 00 2e 00 70 00 68 00 70 00 3f 00 73 00 69 00 74 00 65 00 3d 00 } //1 /getfile.php?site=
		$a_01_2 = {4f 00 66 00 66 00 69 00 63 00 65 00 50 00 6c 00 75 00 67 00 69 00 6e 00 } //1 OfficePlugin
		$a_01_3 = {5f 73 74 61 72 74 75 70 46 69 6c 65 55 52 4c 44 6f 77 6e 6c 6f 61 64 65 64 } //1 _startupFileURLDownloaded
		$a_01_4 = {49 73 53 6b 79 70 65 4f 70 65 6e } //1 IsSkypeOpen
		$a_01_5 = {67 65 74 5f 44 72 69 76 65 } //1 get_Drive
		$a_01_6 = {75 00 6e 00 48 00 75 00 6b 00 } //1 unHuk
		$a_01_7 = {75 00 73 00 62 00 74 00 72 00 61 00 63 00 6b 00 69 00 6e 00 67 00 } //1 usbtracking
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}