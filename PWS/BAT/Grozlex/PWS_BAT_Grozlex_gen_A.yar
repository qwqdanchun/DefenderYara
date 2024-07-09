
rule PWS_BAT_Grozlex_gen_A{
	meta:
		description = "PWS:BAT/Grozlex.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 0e 00 0d 00 00 "
		
	strings :
		$a_03_0 = {09 08 11 05 94 06 11 05 94 61 28 ?? ?? ?? ?? 28 ?? ?? ?? ?? 28 ?? ?? ?? ?? 0d 11 05 17 d6 13 05 11 05 11 08 31 da } //10
		$a_03_1 = {20 d2 04 00 00 20 0f 27 00 00 6f ?? ?? ?? ?? 28 ?? ?? ?? ?? 06 06 72 } //10
		$a_03_2 = {2a 09 23 00 00 00 00 d0 12 63 41 34 21 02 6c ?? 6c 5b ?? 6c 5b 13 04 12 04 72 } //10
		$a_00_3 = {3f 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 61 00 64 00 64 00 26 00 61 00 3d 00 } //10 ?action=add&a=
		$a_00_4 = {3c 00 48 00 6f 00 73 00 74 00 3e 00 28 00 2e 00 2b 00 3f 00 29 00 3c 00 2f 00 48 00 6f 00 73 00 74 00 3e 00 5c 00 73 00 2b 00 3c 00 50 00 6f 00 72 00 74 00 3e 00 28 00 2e 00 2b 00 3f 00 29 00 3c 00 2f 00 50 00 6f 00 72 00 74 00 3e 00 5c 00 73 00 2b 00 2e 00 2b 00 5c 00 73 00 2b 00 2e 00 2b 00 5c 00 73 00 2b 00 3c 00 55 00 73 00 65 00 72 00 3e 00 28 00 2e 00 2b 00 3f 00 29 00 3c 00 2f 00 55 00 73 00 65 00 72 00 3e 00 5c 00 73 00 2b 00 3c 00 50 00 61 00 73 00 73 00 3e 00 28 00 2e 00 2b 00 3f 00 29 00 3c 00 2f 00 50 00 61 00 73 00 73 00 3e 00 } //5 <Host>(.+?)</Host>\s+<Port>(.+?)</Port>\s+.+\s+.+\s+<User>(.+?)</User>\s+<Pass>(.+?)</Pass>
		$a_00_5 = {5b 00 43 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 20 00 54 00 65 00 78 00 74 00 } //5 [Clipboard Text
		$a_00_6 = {4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 73 00 } //5 Keyboard Keylogs
		$a_00_7 = {3a 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 20 00 4b 00 65 00 79 00 20 00 2d 00 } //5 : Microsoft Windows Product Key -
		$a_00_8 = {3a 00 20 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 20 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 20 00 2d 00 } //5 : Mozilla Firefox Passwords -
		$a_00_9 = {5c 00 54 00 72 00 69 00 6c 00 6c 00 69 00 61 00 6e 00 5c 00 75 00 73 00 65 00 72 00 73 00 5c 00 67 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 2e 00 69 00 6e 00 69 00 } //1 \Trillian\users\global\accounts.ini
		$a_00_10 = {5c 00 63 00 6f 00 6e 00 66 00 69 00 67 00 5c 00 53 00 74 00 65 00 61 00 6d 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 2e 00 76 00 64 00 66 00 } //1 \config\SteamAppData.vdf
		$a_00_11 = {5c 00 42 00 69 00 74 00 63 00 6f 00 69 00 6e 00 5c 00 77 00 61 00 6c 00 6c 00 65 00 74 00 2e 00 64 00 61 00 74 00 } //1 \Bitcoin\wallet.dat
		$a_00_12 = {5c 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 5c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 5c 00 4c 00 6f 00 67 00 69 00 6e 00 20 00 44 00 61 00 74 00 61 00 } //1 \Google\Chrome\User Data\Default\Login Data
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_03_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*5+(#a_00_5  & 1)*5+(#a_00_6  & 1)*5+(#a_00_7  & 1)*5+(#a_00_8  & 1)*5+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1) >=14
 
}