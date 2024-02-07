
rule Worm_BAT_Knowlog_A{
	meta:
		description = "Worm:BAT/Knowlog.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0c 00 12 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 55 6e 6b 6e 6f 77 6e 20 4c 6f 67 67 65 72 20 } //01 00  \Unknown Logger 
		$a_01_1 = {43 68 72 6f 6d 65 5f 4b 69 6c 6c 65 72 } //01 00  Chrome_Killer
		$a_01_2 = {53 70 72 65 61 64 42 47 57 75 73 62 5f 44 6f 57 6f 72 6b } //01 00  SpreadBGWusb_DoWork
		$a_01_3 = {43 44 5f 4b 65 79 73 53 74 65 61 6c 65 72 } //01 00  CD_KeysStealer
		$a_01_4 = {43 49 45 50 61 73 73 77 6f 72 64 } //01 00  CIEPassword
		$a_01_5 = {43 4d 53 4e 4d 65 73 73 65 6e 67 65 72 50 61 73 73 77 6f 72 64 } //01 00  CMSNMessengerPassword
		$a_01_6 = {44 65 73 76 65 72 4b 61 73 70 65 72 73 6b 79 } //01 00  DesverKaspersky
		$a_01_7 = {47 65 74 53 74 65 61 6d 55 73 65 72 6e 61 6d 65 } //01 00  GetSteamUsername
		$a_01_8 = {5c 00 49 00 6e 00 74 00 65 00 6c 00 6c 00 69 00 46 00 6f 00 72 00 6d 00 73 00 5c 00 53 00 74 00 6f 00 72 00 61 00 67 00 65 00 31 00 } //01 00  \IntelliForms\Storage1
		$a_01_9 = {5c 00 46 00 54 00 50 00 5c 00 41 00 63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 } //01 00  \FTP\Accounts
		$a_01_10 = {5c 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 5c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 5c 00 43 00 6f 00 6f 00 6b 00 69 00 65 00 73 00 } //01 00  \Google\Chrome\User Data\Default\Cookies
		$a_01_11 = {5c 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 5c 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 5c 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 73 00 } //01 00  \Mozilla\Firefox\Profiles
		$a_01_12 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 0d 00 0a 00 73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 } //01 00 
		$a_01_13 = {5c 00 43 00 6c 00 69 00 65 00 6e 00 74 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 2e 00 62 00 6c 00 6f 00 62 00 } //01 00  \ClientRegistry.blob
		$a_01_14 = {5c 00 45 00 6c 00 65 00 63 00 74 00 72 00 6f 00 6e 00 69 00 63 00 20 00 41 00 72 00 74 00 73 00 5c 00 45 00 41 00 20 00 } //01 00  \Electronic Arts\EA 
		$a_01_15 = {5c 00 6b 00 61 00 7a 00 61 00 61 00 5c 00 6d 00 79 00 20 00 73 00 68 00 61 00 72 00 65 00 64 00 20 00 66 00 6f 00 6c 00 64 00 65 00 72 00 5c 00 } //01 00  \kazaa\my shared folder\
		$a_01_16 = {5c 00 6c 00 69 00 6d 00 65 00 77 00 69 00 72 00 65 00 5c 00 73 00 68 00 61 00 72 00 65 00 64 00 5c 00 } //01 00  \limewire\shared\
		$a_01_17 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 77 00 69 00 6e 00 33 00 32 00 5f 00 73 00 68 00 61 00 72 00 65 00 } //00 00  select * from win32_share
	condition:
		any of ($a_*)
 
}