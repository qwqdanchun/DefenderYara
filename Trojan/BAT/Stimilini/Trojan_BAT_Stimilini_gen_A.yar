
rule Trojan_BAT_Stimilini_gen_A{
	meta:
		description = "Trojan:BAT/Stimilini.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 65 61 74 68 42 79 43 61 70 74 63 68 61 } //01 00  DeathByCaptcha
		$a_01_1 = {2f 72 65 63 61 70 74 63 68 61 2f 61 70 69 2f 66 61 6c 6c 62 61 63 6b 3f 6b 3d 36 4c 64 6c 52 67 41 54 } //01 00  /recaptcha/api/fallback?k=6LdlRgAT
		$a_01_2 = {73 74 65 61 6d 63 6f 6d 6d 75 6e 69 74 79 2e 63 6f 6d 2f } //01 00  steamcommunity.com/
		$a_01_3 = {26 75 69 5f 6d 6f 64 65 3d 77 65 62 26 61 63 63 65 73 73 5f 74 6f 6b 65 6e 3d } //01 00  &ui_mode=web&access_token=
		$a_01_4 = {26 74 72 61 64 65 6f 66 66 65 72 6d 65 73 73 61 67 65 3d 7b 30 7d 26 6a 73 6f 6e 5f 74 72 61 64 65 6f 66 66 65 72 3d } //01 00  &tradeoffermessage={0}&json_tradeoffer=
		$a_01_5 = {37 36 35 36 31 31 39 5b 30 2d 39 5d 7b 31 30 7d 25 37 63 25 37 63 5b 41 2d 46 30 2d 39 5d 7b 34 30 7d } //01 00  7656119[0-9]{10}%7c%7c[A-F0-9]{40}
		$a_03_6 = {63 6d 64 2e 65 78 65 90 01 05 73 74 61 72 74 20 22 22 20 22 90 01 0e 72 75 6e 61 73 90 00 } //00 00 
		$a_00_7 = {78 f9 00 00 07 } //00 07 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Stimilini_gen_A_2{
	meta:
		description = "Trojan:BAT/Stimilini.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {37 36 35 36 31 31 5b 30 2d 39 5d 7b 31 31 7d 25 37 63 25 37 63 5b 41 2d 46 30 2d 39 5d 7b 34 30 7d } //01 00  765611[0-9]{11}%7c%7c[A-F0-9]{40}
		$a_01_1 = {73 74 65 61 6d 63 6f 6d 6d 75 6e 69 74 79 2e 63 6f 6d 2f } //01 00  steamcommunity.com/
		$a_01_2 = {2f 61 70 69 2e 70 68 70 3f 61 63 74 3d 6c 6f 67 26 75 73 65 72 3d } //01 00  /api.php?act=log&user=
		$a_01_3 = {26 63 61 6c 6c 62 61 63 6b 3d 61 6e 67 75 6c 61 72 2e 63 61 6c 6c 62 61 63 6b 73 } //01 00  &callback=angular.callbacks
		$a_03_4 = {73 74 65 61 6d 73 74 65 61 6c 65 72 2e 63 6f 6d 90 02 15 5c 64 61 74 61 2e 7a 69 70 90 00 } //01 00 
		$a_03_5 = {63 6d 64 2e 65 78 65 90 01 05 73 74 61 72 74 20 22 22 20 22 90 01 0e 72 75 6e 61 73 90 00 } //01 00 
		$a_03_6 = {5c 63 6f 6e 66 69 67 90 02 08 63 6f 6e 66 69 67 2e 76 64 66 90 00 } //01 00 
		$a_01_7 = {7b 31 7d 7b 30 7d 55 73 65 72 20 2d 20 7b 32 7d 7b 30 7d 50 61 73 73 } //00 00  {1}{0}User - {2}{0}Pass
		$a_00_8 = {5d 04 00 00 6c } //30 03 
	condition:
		any of ($a_*)
 
}