
rule Backdoor_Win32_Kanav_B{
	meta:
		description = "Backdoor:Win32/Kanav.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 03 00 "
		
	strings :
		$a_03_0 = {8b 55 ec 3b 55 0c 7d 2a e8 90 01 04 25 0f 00 00 80 79 05 48 83 c8 f0 40 8b 4d 08 03 4d ec 8a 90 90 90 01 04 88 11 8b 45 ec 83 c0 01 89 45 ec eb ce 90 00 } //03 00 
		$a_03_1 = {6a 02 6a 00 6a da 56 ff 15 90 01 04 8b 7c 24 14 6a 00 8d 4c 24 0c 51 6a 26 57 56 ff 15 90 01 04 85 c0 74 41 56 ff 15 90 01 04 8b c7 8d 50 01 8d a4 24 00 00 00 00 8a 08 40 84 c9 75 f9 2b c2 83 f8 26 74 20 33 d2 89 17 89 57 04 90 00 } //03 00 
		$a_03_2 = {25 0f 00 00 80 79 05 48 83 c8 f0 40 8a 80 90 01 04 88 84 34 38 03 00 00 46 83 fe 05 7c dc 90 09 05 00 e8 90 01 02 00 00 90 00 } //01 00 
		$a_01_3 = {2f 75 70 64 61 74 65 2e 74 78 74 00 } //01 00 
		$a_01_4 = {2f 75 70 67 72 61 64 65 2e 74 78 74 00 } //01 00 
		$a_01_5 = {72 65 67 20 64 65 6c 65 74 65 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 41 63 74 69 76 65 20 53 65 74 75 70 5c 49 6e 73 74 61 6c 6c 65 64 20 43 6f 6d 70 6f 6e 65 6e 74 73 5c } //01 00  reg delete "HKEY_CURRENT_USER\Software\Microsoft\Active Setup\Installed Components\
		$a_01_6 = {68 74 74 70 3a 2f 2f 64 6f 6e 74 6b 69 6c 6c 6d 65 2f } //00 00  http://dontkillme/
	condition:
		any of ($a_*)
 
}