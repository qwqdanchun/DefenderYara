
rule Trojan_Win32_Febipos_B{
	meta:
		description = "Trojan:Win32/Febipos.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 73 5c 57 53 65 72 76 69 63 65 2e 64 6c 6c 00 25 73 5c 72 65 67 73 76 72 33 32 2e 65 78 65 } //01 00 
		$a_01_1 = {44 69 73 61 62 6c 65 41 64 64 6f 6e 4c 6f 61 64 54 69 6d 65 50 65 72 66 6f 72 6d 61 6e 63 65 4e 6f 74 69 66 69 63 61 74 69 6f 6e 73 } //01 00  DisableAddonLoadTimePerformanceNotifications
		$a_01_2 = {49 67 6e 6f 72 65 46 72 61 6d 65 41 70 70 72 6f 76 61 6c 43 68 65 63 6b } //01 00  IgnoreFrameApprovalCheck
		$a_01_3 = {40 66 61 63 65 62 6f 6f 6b 2e 63 6f 6d 2e 78 70 69 } //02 00  @facebook.com.xpi
		$a_01_4 = {3a 2f 2f 70 75 62 75 70 6c 2e 63 6f 6d 2f 75 70 64 61 74 65 73 2f } //02 00  ://pubupl.com/updates/
		$a_01_5 = {73 6d 35 72 2f 74 30 6f 61 2f 67 38 6c 6c 6b 61 69 65 2e 78 6d 6c } //02 00  sm5r/t0oa/g8llkaie.xml
		$a_03_6 = {3c 09 75 e7 0f b6 03 3c 20 75 73 83 c3 01 0f b6 03 3c 09 74 f6 3c 20 74 f2 f6 45 d0 01 be 0a 00 00 00 74 04 0f b7 75 d4 c7 04 24 00 00 00 00 e8 90 01 04 83 ec 04 89 74 24 0c 89 5c 24 08 c7 44 24 04 00 00 00 00 89 04 24 e8 90 00 } //01 00 
		$a_01_7 = {22 73 63 72 69 70 74 73 22 3a 20 5b 20 22 61 6e 74 65 2e 6a 73 22 2c } //01 00  "scripts": [ "ante.js",
		$a_01_8 = {22 73 63 72 69 70 74 73 22 3a 20 5b 20 22 73 75 70 70 72 69 6d 65 72 2e 6a 73 22 2c } //01 00  "scripts": [ "supprimer.js",
		$a_01_9 = {22 69 6e 73 74 61 6c 6c 5f 74 69 6d 65 22 3a 20 22 31 33 30 30 36 38 37 34 36 36 39 39 39 35 37 33 39 22 } //00 00  "install_time": "13006874669995739"
		$a_00_10 = {5d 04 00 } //00 ca 
	condition:
		any of ($a_*)
 
}