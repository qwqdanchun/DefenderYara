
rule Worm_Win32_P2Pworm{
	meta:
		description = "Worm:Win32/P2Pworm,SIGNATURE_TYPE_PEHSTR,09 00 08 00 11 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 56 50 5f 43 72 61 63 6b } //01 00  AVP_Crack
		$a_01_1 = {43 72 61 63 6b 65 72 20 47 61 6d 65 2e } //01 00  Cracker Game.
		$a_01_2 = {58 58 58 20 56 69 72 74 75 61 6c 20 53 65 78 2e } //01 00  XXX Virtual Sex.
		$a_01_3 = {43 72 65 64 69 74 20 43 61 72 64 2e } //01 00  Credit Card.
		$a_01_4 = {48 61 63 6b 65 72 2e } //01 00  Hacker.
		$a_01_5 = {4e 6f 72 74 6f 6e 20 4b 65 79 67 65 6e 2e } //01 00  Norton Keygen.
		$a_01_6 = {48 6f 74 6d 61 69 6c 20 48 61 63 6b 2e } //01 00  Hotmail Hack.
		$a_01_7 = {49 43 51 20 48 61 63 6b 2e } //01 00  ICQ Hack.
		$a_01_8 = {70 6f 72 6e 2e } //01 00  porn.
		$a_01_9 = {63 72 61 63 6b 2e } //01 00  crack.
		$a_01_10 = {5c 4b 4d 44 } //01 00  \KMD
		$a_01_11 = {5c 4b 61 7a 7a 61 } //01 00  \Kazza
		$a_01_12 = {5c 4d 6f 72 70 68 65 75 73 } //01 00  \Morpheus
		$a_01_13 = {5c 47 72 6f 6b 73 74 65 72 } //01 00  \Grokster
		$a_01_14 = {5c 42 65 61 72 73 68 61 72 65 } //01 00  \Bearshare
		$a_01_15 = {5c 47 6e 75 63 6c 65 75 73 } //01 00  \Gnucleus
		$a_01_16 = {5c 45 64 6f 6e 6b 65 79 32 30 30 30 5c 49 6e 63 6f 6d 69 6e 67 } //00 00  \Edonkey2000\Incoming
	condition:
		any of ($a_*)
 
}