
rule Worm_Win32_Sfone_A{
	meta:
		description = "Worm:Win32/Sfone.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0f 00 00 04 00 "
		
	strings :
		$a_03_0 = {85 c0 75 1f 8b 85 90 01 02 ff ff 50 6a 00 68 ff 0f 1f 00 ff 15 58 67 41 00 89 c6 6a 00 56 ff 15 90 01 02 41 00 83 c3 01 8b 04 9d 90 01 02 41 00 85 c0 75 a8 8d 85 90 01 02 ff ff 50 57 e8 8a 0c 00 00 83 f8 01 0f 84 00 ff ff ff 90 00 } //01 00 
		$a_00_1 = {6d 75 74 65 78 36 36 36 } //01 00  mutex666
		$a_00_2 = {74 68 69 73 69 73 61 70 61 73 73 77 6f 72 64 21 } //01 00  thisisapassword!
		$a_00_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_4 = {41 56 70 72 6f 74 65 63 74 39 58 } //01 00  AVprotect9X
		$a_00_5 = {6e 6f 74 65 73 2e 74 78 74 2e 65 78 65 } //01 00  notes.txt.exe
		$a_00_6 = {72 65 61 64 6d 65 2e 74 78 74 2e 65 78 65 } //01 00  readme.txt.exe
		$a_00_7 = {69 6e 63 6f 6d 69 6e 67 } //01 00  incoming
		$a_00_8 = {73 68 61 72 65 } //01 00  share
		$a_00_9 = {75 70 73 6b 69 72 74 } //01 00  upskirt
		$a_00_10 = {61 6e 6e 69 65 } //01 00  annie
		$a_00_11 = {6e 69 70 70 6c 65 73 } //01 00  nipples
		$a_00_12 = {67 6c 61 6e 73 } //01 00  glans
		$a_00_13 = {76 61 67 69 6e 61 } //01 00  vagina
		$a_00_14 = {49 63 6d 70 53 65 6e 64 45 63 68 6f } //00 00  IcmpSendEcho
	condition:
		any of ($a_*)
 
}