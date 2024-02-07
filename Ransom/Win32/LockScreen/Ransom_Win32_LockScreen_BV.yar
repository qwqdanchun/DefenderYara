
rule Ransom_Win32_LockScreen_BV{
	meta:
		description = "Ransom:Win32/LockScreen.BV,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 00 69 00 6e 00 79 00 6c 00 20 00 43 00 6f 00 77 00 62 00 6f 00 79 00 20 00 4d 00 65 00 73 00 73 00 79 00 20 00 44 00 65 00 69 00 74 00 79 00 20 00 48 00 65 00 63 00 6b 00 6c 00 65 00 20 00 44 00 69 00 67 00 73 00 } //01 00  Vinyl Cowboy Messy Deity Heckle Digs
		$a_01_1 = {50 00 6f 00 6f 00 70 00 20 00 41 00 6e 00 6b 00 6c 00 65 00 20 00 54 00 72 00 75 00 6c 00 79 00 } //01 00  Poop Ankle Truly
		$a_01_2 = {45 00 6d 00 62 00 65 00 72 00 20 00 52 00 61 00 6d 00 62 00 6f 00 20 00 4b 00 65 00 79 00 73 00 20 00 53 00 65 00 61 00 74 00 73 00 } //01 00  Ember Rambo Keys Seats
		$a_01_3 = {53 00 77 00 69 00 6e 00 67 00 20 00 43 00 6f 00 6f 00 70 00 65 00 72 00 20 00 45 00 70 00 6f 00 63 00 68 00 20 00 50 00 6f 00 6f 00 68 00 } //01 00  Swing Cooper Epoch Pooh
		$a_01_4 = {43 00 68 00 69 00 6c 00 69 00 20 00 43 00 68 00 65 00 77 00 } //00 00  Chili Chew
	condition:
		any of ($a_*)
 
}