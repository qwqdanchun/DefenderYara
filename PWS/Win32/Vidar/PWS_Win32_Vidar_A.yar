
rule PWS_Win32_Vidar_A{
	meta:
		description = "PWS:Win32/Vidar.A,SIGNATURE_TYPE_PEHSTR_EXT,ffffff9a 00 ffffff9a 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {6e 65 74 66 75 6c 66 69 6c 6c 65 64 } //01 00  netfulfilled
		$a_00_1 = {6d 6e 70 61 79 6d 65 6e 74 73 } //01 00  mnpayments
		$a_00_2 = {6d 6e 63 61 63 68 65 } //01 00  mncache
		$a_00_3 = {67 6f 76 65 72 6e 61 6e 63 65 } //01 00  governance
		$a_00_4 = {62 61 6e 6c 69 73 74 } //02 00  banlist
		$a_00_5 = {66 65 65 5f 65 73 74 69 6d 61 74 65 73 } //32 00  fee_estimates
		$a_00_6 = {77 61 6c 6c 65 2a 2e 64 61 74 } //32 00  walle*.dat
		$a_00_7 = {63 61 72 64 5f 6e 75 6d 62 65 72 5f 65 6e 63 72 79 70 74 65 64 20 46 52 4f 4d 20 63 72 65 64 69 74 5f 63 61 72 64 73 } //32 00  card_number_encrypted FROM credit_cards
		$a_02_8 = {43 61 72 64 3a 90 02 20 4e 61 6d 65 3a 90 02 20 50 61 73 73 77 6f 72 64 3a 90 00 } //00 00 
		$a_00_9 = {5d 04 00 00 e6 f3 03 80 5c 3d 00 00 f1 f3 03 80 00 00 01 00 22 00 27 00 48 61 63 6b 54 6f 6f 6c 3a 50 6f 77 65 72 53 68 65 6c 6c 2f 50 61 73 73 54 68 65 54 69 63 6b 65 74 2e 41 21 61 6d 73 00 00 01 40 04 82 3f 00 04 00 96 3c 00 00 00 00 38 00 4d 70 49 73 50 6f 77 65 72 53 68 65 6c 6c 41 4d 53 49 53 } //63 61 
	condition:
		any of ($a_*)
 
}