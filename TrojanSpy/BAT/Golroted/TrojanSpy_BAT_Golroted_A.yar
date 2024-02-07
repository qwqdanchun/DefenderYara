
rule TrojanSpy_BAT_Golroted_A{
	meta:
		description = "TrojanSpy:BAT/Golroted.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 0b 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 00 4c 00 6f 00 67 00 67 00 65 00 72 00 90 02 0f 53 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 4c 00 6f 00 67 00 20 00 2d 00 20 00 5b 00 90 00 } //01 00 
		$a_00_1 = {53 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 2d 00 20 00 5b 00 } //01 00  Stealer - [
		$a_00_2 = {50 00 72 00 65 00 64 00 61 00 74 00 6f 00 72 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 2d 00 20 00 5b 00 } //01 00  Predator Logger - [
		$a_00_3 = {4e 00 6f 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 20 00 45 00 6d 00 61 00 69 00 6c 00 20 00 2d 00 20 00 5b 00 } //01 00  Notification Email - [
		$a_00_4 = {52 00 73 00 42 00 6f 00 74 00 5f 00 41 00 63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 2e 00 69 00 6e 00 69 00 } //01 00  RsBot_Accounts.ini
		$a_00_5 = {53 00 74 00 65 00 61 00 6c 00 73 00 20 00 74 00 68 00 65 00 20 00 57 00 61 00 6c 00 6c 00 65 00 74 00 2e 00 44 00 41 00 54 00 20 00 66 00 69 00 6c 00 65 00 } //01 00  Steals the Wallet.DAT file
		$a_01_6 = {42 69 74 63 6f 69 6e 73 75 62 } //01 00  Bitcoinsub
		$a_00_7 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 66 00 61 00 6b 00 65 00 72 00 72 00 6f 00 72 00 } //01 00  Disablefakerror
		$a_00_8 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 73 00 70 00 72 00 65 00 61 00 64 00 65 00 72 00 73 00 } //01 00  Disablespreaders
		$a_00_9 = {50 00 72 00 65 00 64 00 61 00 74 00 6f 00 72 00 20 00 50 00 61 00 69 00 6e 00 20 00 76 00 } //01 00  Predator Pain v
		$a_03_10 = {68 00 6f 00 6c 00 64 00 65 00 72 00 6d 00 61 00 69 00 6c 00 2e 00 74 00 78 00 74 00 90 01 03 53 00 6f 00 75 00 72 00 63 00 65 00 3a 00 7b 00 34 00 7d 00 7b 00 34 00 7d 00 7b 00 30 00 7d 00 7b 00 35 00 7d 00 48 00 6f 00 73 00 74 00 3a 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}