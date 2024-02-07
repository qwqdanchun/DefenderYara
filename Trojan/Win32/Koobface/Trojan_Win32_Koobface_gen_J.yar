
rule Trojan_Win32_Koobface_gen_J{
	meta:
		description = "Trojan:Win32/Koobface.gen!J,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0d 00 00 02 00 "
		
	strings :
		$a_03_0 = {8d 6e 0c 6a 7c 55 ff 15 90 09 19 00 6a 0b 68 90 00 } //02 00 
		$a_03_1 = {6a 02 ff d7 53 a3 90 01 04 ff 75 fc 68 90 01 04 ff 75 fc ff d6 50 6a 07 ff d7 8b 35 90 01 04 a3 90 01 04 53 53 8d 45 e0 53 50 ff d6 5f 85 c0 74 15 90 00 } //02 00 
		$a_03_2 = {53 50 6a 48 68 9d 01 00 00 53 53 ff b6 90 01 02 00 00 ff 15 90 00 } //02 00 
		$a_03_3 = {6a 07 50 ff 15 90 01 04 6a 44 8d 45 a0 56 50 e8 90 01 04 6a 10 8d 45 e4 56 50 c7 45 a0 44 00 00 00 c7 45 cc 01 00 00 00 66 89 75 d0 e8 90 00 } //01 00 
		$a_00_4 = {25 73 5c 63 61 25 73 61 25 73 6c 00 } //01 00  猥捜╡慳猥l
		$a_00_5 = {25 73 5c 63 61 70 25 73 2e 62 25 73 00 } //01 00 
		$a_00_6 = {3f 61 63 74 69 6f 6e 3d 63 61 70 74 63 68 61 } //01 00  ?action=captcha
		$a_00_7 = {72 75 6e 64 6c 6c 20 22 25 73 22 2c 63 61 70 74 63 68 61 00 } //01 00  畲摮汬∠猥Ⱒ慣瑰档a
		$a_00_8 = {47 6c 6f 62 61 6c 5c 43 41 50 54 43 48 41 2d } //01 00  Global\CAPTCHA-
		$a_00_9 = {25 73 20 2d 6b 20 63 61 70 74 63 68 61 } //01 00  %s -k captcha
		$a_00_10 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d 20 6e 61 6d 65 3d 22 63 61 70 74 63 68 61 22 20 70 72 6f 67 72 61 6d 3d 22 25 73 22 20 6d 6f 64 65 3d 45 4e 41 42 4c 45 } //01 00  netsh firewall add allowedprogram name="captcha" program="%s" mode=ENABLE
		$a_00_11 = {25 25 74 65 6d 70 25 25 5c 63 61 70 74 63 68 61 2e 62 61 74 } //01 00  %%temp%%\captcha.bat
		$a_00_12 = {25 25 77 69 6e 64 69 72 25 25 5c 73 79 73 74 65 6d 33 32 5c 63 61 70 74 63 68 61 2e 64 6c 6c } //00 00  %%windir%%\system32\captcha.dll
	condition:
		any of ($a_*)
 
}