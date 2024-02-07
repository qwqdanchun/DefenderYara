
rule Worm_Win32_Womble_D{
	meta:
		description = "Worm:Win32/Womble.D,SIGNATURE_TYPE_PEHSTR,0f 00 0e 00 13 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 61 73 74 6d 61 69 6c 2e } //01 00  fastmail.
		$a_01_1 = {67 72 61 66 66 69 74 69 2e } //01 00  graffiti.
		$a_01_2 = {2e 63 6f 6d 2f 63 75 72 72 65 6e 74 2f } //01 00  .com/current/
		$a_01_3 = {3f 61 3d 25 64 26 64 3d 30 3a 30 3a 25 64 } //01 00  ?a=%d&d=0:0:%d
		$a_01_4 = {3c 66 72 61 6d 65 20 73 72 63 3d } //01 00  <frame src=
		$a_01_5 = {45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 20 46 6f 6c 64 65 72 73 } //01 00  Explorer\Shell Folders
		$a_01_6 = {61 70 70 6c 69 63 61 74 69 6f 6e 2f 70 64 66 } //01 00  application/pdf
		$a_01_7 = {49 6e 74 65 72 6e 65 74 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 72 5c 41 63 63 6f 75 6e 74 73 } //01 00  Internet Account Manager\Accounts
		$a_01_8 = {50 72 65 66 65 72 65 6e 63 65 3d } //01 00  Preference=
		$a_01_9 = {63 6f 6e 6e 65 63 74 20 74 6f 20 73 65 72 76 65 72 20 25 73 2c 20 25 64 } //01 00  connect to server %s, %d
		$a_01_10 = {4c 6f 6f 6b 20 61 74 20 74 68 69 73 21 } //01 00  Look at this!
		$a_01_11 = {70 61 73 73 77 6f 72 64 73 2e 64 6f 63 } //01 00  passwords.doc
		$a_01_12 = {5f 53 54 41 52 54 5f 46 49 4c 45 5f } //01 00  _START_FILE_
		$a_01_13 = {5f 45 4e 44 5f 46 49 4c 45 5f } //01 00  _END_FILE_
		$a_01_14 = {5f 45 4e 44 5f 41 44 44 52 53 5f } //01 00  _END_ADDRS_
		$a_01_15 = {48 45 4c 4f 20 25 73 } //01 00  HELO %s
		$a_01_16 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4d 69 63 72 6f 73 6f 66 74 20 4f 75 74 6c 6f 6f 6b } //01 00  User-Agent: Microsoft Outlook
		$a_01_17 = {44 61 74 65 3a 20 25 73 2c 20 25 2e 32 64 20 25 73 20 25 2e 34 64 } //01 00  Date: %s, %.2d %s %.4d
		$a_01_18 = {46 72 6f 6d 3a 20 22 25 73 22 20 3c 25 73 3e } //00 00  From: "%s" <%s>
	condition:
		any of ($a_*)
 
}