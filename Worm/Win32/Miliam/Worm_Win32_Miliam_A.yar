
rule Worm_Win32_Miliam_A{
	meta:
		description = "Worm:Win32/Miliam.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {6d 69 6e 69 4d 61 69 6c 2d 76 65 72 73 69 6f 6e 31 2e 30 } //01 00  miniMail-version1.0
		$a_01_1 = {73 61 6e 74 61 2e 63 6c 61 75 73 40 6e 6f 72 74 68 70 6f 6c 65 2e 63 6f 6d 00 00 00 } //01 00 
		$a_03_2 = {73 79 73 74 65 6d 2e 69 6e 69 90 02 04 45 78 70 6c 6f 72 65 72 2e 65 78 65 20 6d 69 6e 69 4d 61 69 6c 2e 65 78 65 90 02 04 73 68 65 6c 6c 90 02 04 62 6f 6f 74 90 00 } //01 00 
		$a_03_3 = {53 4d 54 50 20 45 6d 61 69 6c 20 41 64 64 72 65 73 73 90 02 08 3d 90 02 04 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 72 5c 41 63 63 6f 75 6e 74 73 90 00 } //01 00 
		$a_01_4 = {50 52 49 56 4d 53 47 20 23 23 6e 69 67 67 61 68 20 3a 53 65 6e 74 20 4d 61 69 6c 20 74 6f } //00 00  PRIVMSG ##niggah :Sent Mail to
	condition:
		any of ($a_*)
 
}