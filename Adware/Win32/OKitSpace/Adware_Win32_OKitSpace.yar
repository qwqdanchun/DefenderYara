
rule Adware_Win32_OKitSpace{
	meta:
		description = "Adware:Win32/OKitSpace,SIGNATURE_TYPE_PEHSTR_EXT,08 00 02 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 50 6c 75 67 69 6e 49 6e 6a 65 63 74 49 45 5c 52 65 6c 65 61 73 65 5c 42 61 73 65 46 6c 61 73 68 2e 70 64 62 } //01 00  \PluginInjectIE\Release\BaseFlash.pdb
		$a_01_1 = {7b 43 36 38 41 45 39 43 30 2d 30 39 30 39 2d 34 44 44 43 2d 42 36 36 31 2d 43 31 41 46 42 39 46 35 41 45 35 33 7d } //01 00  {C68AE9C0-0909-4DDC-B661-C1AFB9F5AE53}
		$a_01_2 = {73 74 73 2e 62 61 73 65 66 6c 61 73 68 2e 63 6f 6d 2f 73 6f 66 74 77 61 72 65 5f 73 74 61 74 73 2f } //01 00  sts.baseflash.com/software_stats/
		$a_01_3 = {6f 70 65 6e 28 27 50 4f 53 54 27 2c 20 75 72 6c 2c 20 74 72 75 65 29 3b } //01 00  open('POST', url, true);
		$a_03_4 = {26 61 63 74 69 6f 6e 5f 64 65 73 63 72 69 70 74 69 6f 6e 3d 49 45 90 02 04 75 73 65 72 5f 64 61 74 65 3d 90 00 } //01 00 
		$a_01_5 = {26 75 73 65 72 5f 61 67 65 6e 74 3d 49 45 26 75 73 65 72 5f 69 64 3d } //01 00  &user_agent=IE&user_id=
		$a_01_6 = {26 63 68 61 6e 6e 65 6c 5f 69 64 3d } //01 00  &channel_id=
		$a_01_7 = {26 61 66 66 69 64 3d } //01 00  &affid=
		$a_01_8 = {73 74 2e 72 65 77 69 6e 75 70 2e 63 6f 6d 2f 73 6f 66 74 77 61 72 65 5f 73 74 61 74 73 2f } //01 00  st.rewinup.com/software_stats/
		$a_01_9 = {21 64 6f 63 75 6d 65 6e 74 2e 67 65 74 45 6c 65 6d 65 6e 74 42 79 49 64 28 27 6d 79 62 68 6f 5f 6a 73 27 29 20 26 26 } //01 00  !document.getElementById('mybho_js') &&
		$a_03_10 = {2e 63 6f 6d 2f 62 61 73 65 2f 90 03 04 05 62 61 73 65 72 65 77 69 6e 2e 6a 73 00 90 00 } //01 00 
		$a_01_11 = {61 64 73 2e 6f 6b 69 74 73 70 61 63 65 2e 63 6f 6d 2f 75 70 6c 6f 61 64 73 2f 63 6f 76 65 72 2e 6a 73 } //01 00  ads.okitspace.com/uploads/cover.js
		$a_01_12 = {6f 6e 72 65 61 64 79 73 74 61 74 65 63 68 61 6e 67 65 20 3d 20 66 75 6e 63 74 69 6f 6e 20 28 29 20 7b 7d 3b } //00 00  onreadystatechange = function () {};
	condition:
		any of ($a_*)
 
}