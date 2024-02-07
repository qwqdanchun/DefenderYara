
rule Trojan_BAT_PasswordStealer_PA_MTB{
	meta:
		description = "Trojan:BAT/PasswordStealer.PA!MTB,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 72 61 62 5f 70 68 6f 74 6f 5f 66 72 6f 6d 5f 64 65 73 6b 74 6f 70 } //01 00  grab_photo_from_desktop
		$a_01_1 = {67 72 61 62 5f 64 6f 63 73 5f 66 72 6f 6d 5f 44 6f 63 75 6d 65 6e 74 } //01 00  grab_docs_from_Document
		$a_01_2 = {75 70 6c 6f 61 64 5f 73 63 72 65 65 6e 73 68 6f 74 } //01 00  upload_screenshot
		$a_01_3 = {62 72 6f 77 73 65 72 5f 70 61 73 73 77 6f 72 64 73 } //01 00  browser_passwords
		$a_01_4 = {65 6d 61 69 6c 73 5f 70 61 73 73 } //01 00  emails_pass
		$a_01_5 = {75 70 6c 6f 61 64 5f 70 61 73 73 77 6f 72 64 73 } //01 00  upload_passwords
		$a_01_6 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00  SELECT * FROM AntivirusProduct
		$a_01_7 = {49 00 4d 00 41 00 50 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00  IMAP Password
		$a_01_8 = {50 00 4f 00 50 00 33 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00  POP3 Password
		$a_01_9 = {63 00 72 00 65 00 64 00 69 00 74 00 5f 00 63 00 61 00 72 00 64 00 73 00 } //01 00  credit_cards
		$a_01_10 = {43 00 61 00 72 00 64 00 20 00 4e 00 75 00 6d 00 62 00 65 00 72 00 } //01 00  Card Number
		$a_01_11 = {47 00 72 00 61 00 62 00 65 00 72 00 20 00 46 00 72 00 6f 00 6d 00 } //00 00  Graber From
	condition:
		any of ($a_*)
 
}