
rule TrojanSpy_Win32_Dobestel_A{
	meta:
		description = "TrojanSpy:Win32/Dobestel.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 61 76 65 43 6f 6d 6d 61 6e 64 } //01 00  HaveCommand
		$a_01_1 = {43 6d 64 5f 64 6c } //01 00  Cmd_dl
		$a_01_2 = {43 6d 64 5f 75 70 6c 64 } //01 00  Cmd_upld
		$a_01_3 = {43 6d 64 5f 72 6d 76 } //01 00  Cmd_rmv
		$a_01_4 = {43 6d 64 5f 63 6f 6d } //01 00  Cmd_com
		$a_01_5 = {43 6d 64 5f 75 70 64 74 } //01 00  Cmd_updt
		$a_01_6 = {43 6d 64 5f 45 78 65 } //01 00  Cmd_Exe
		$a_01_7 = {53 45 4c 45 43 54 20 75 73 65 72 6e 61 6d 65 5f 76 61 6c 75 65 2c 20 70 61 73 73 77 6f 72 64 5f 76 61 6c 75 65 2c 20 73 69 67 6e 6f 6e 5f 72 65 61 6c 6d 20 46 52 4f 4d 20 6c 6f 67 69 6e 73 } //01 00  SELECT username_value, password_value, signon_realm FROM logins
		$a_01_8 = {53 45 4c 45 43 54 20 68 6f 73 74 6e 61 6d 65 2c 20 65 6e 63 72 79 70 74 65 64 55 73 65 72 6e 61 6d 65 2c 20 65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 2c 20 65 6e 63 54 79 70 65 20 46 72 6f 6d 20 6d 6f 7a 5f 6c 6f 67 69 6e 73 } //01 00  SELECT hostname, encryptedUsername, encryptedPassword, encType From moz_logins
		$a_01_9 = {5c 00 7b 00 41 00 41 00 35 00 35 00 46 00 46 00 35 00 35 00 34 00 34 00 44 00 44 00 31 00 31 00 41 00 41 00 31 00 31 00 7d 00 5c 00 } //01 00  \{AA55FF5544DD11AA11}\
		$a_01_10 = {30 00 31 00 41 00 41 00 31 00 46 00 35 00 34 00 42 00 43 00 62 00 33 00 34 00 33 00 65 00 35 00 62 00 66 00 64 00 61 00 62 00 63 00 30 00 35 00 34 00 61 00 62 00 34 00 35 00 64 00 36 00 37 00 2e 00 74 00 6d 00 70 00 } //00 00  01AA1F54BCb343e5bfdabc054ab45d67.tmp
		$a_00_11 = {5d 04 00 00 e8 1f 03 80 } //5c 25 
	condition:
		any of ($a_*)
 
}