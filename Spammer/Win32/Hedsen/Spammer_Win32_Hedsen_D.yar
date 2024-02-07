
rule Spammer_Win32_Hedsen_D{
	meta:
		description = "Spammer:Win32/Hedsen.D,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {00 57 69 6c 73 6f 6e 00 00 00 00 00 00 00 00 00 00 43 6c 61 72 6b 00 00 00 00 00 00 00 00 00 00 00 48 65 6e 64 65 72 73 6f 6e 00 00 00 00 00 00 00 52 6f 73 73 00 00 00 00 00 00 00 00 00 00 00 00 4a 61 6d 65 73 00 } //02 00 
		$a_01_1 = {00 2f 3f 67 65 74 5f 73 65 6e 64 65 72 00 00 00 00 47 45 54 00 25 5b 5e 40 5d 40 25 73 00 } //02 00 
		$a_03_2 = {00 53 65 6e 64 20 4d 61 69 6c 00 90 05 03 01 00 90 04 07 04 2e 30 2d 39 90 05 08 04 2e 30 2d 39 00 90 05 03 01 00 3f 67 65 74 5f 6c 65 74 74 65 72 00 90 00 } //01 00 
		$a_01_3 = {2f 61 63 74 69 6f 6e 2e 70 68 70 3f 61 63 74 69 6f 6e 3d 67 65 74 5f 6d 61 69 6c 73 } //01 00  /action.php?action=get_mails
		$a_01_4 = {2f 61 63 74 69 6f 6e 2e 70 68 70 3f 61 63 74 69 6f 6e 3d 67 65 74 5f 72 65 64 } //01 00  /action.php?action=get_red
		$a_01_5 = {4c 6f 67 53 75 63 5f 25 59 25 6d 25 64 25 48 25 4d 25 53 2e 74 78 74 00 } //01 00 
		$a_01_6 = {67 65 74 5f 6d 61 69 6c 73 26 50 72 6f 63 65 73 73 65 64 3d 25 64 26 52 65 73 6f 6c 76 65 64 3d 25 64 26 43 6f 6e 6e 65 63 74 65 64 3d 25 64 26 35 35 30 45 52 52 4f 52 3d 25 64 26 4c 65 74 74 65 72 73 53 75 63 63 65 73 73 66 75 6c 3d 25 64 26 4c 65 74 74 65 72 73 53 75 63 63 65 73 73 66 75 6c 54 6c 73 3d 25 64 } //00 00  get_mails&Processed=%d&Resolved=%d&Connected=%d&550ERROR=%d&LettersSuccessful=%d&LettersSuccessfulTls=%d
		$a_00_7 = {80 10 00 } //00 8e 
	condition:
		any of ($a_*)
 
}