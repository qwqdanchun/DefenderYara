
rule Worm_Win32_Limraps_A{
	meta:
		description = "Worm:Win32/Limraps.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 08 00 07 00 00 04 00 "
		
	strings :
		$a_03_0 = {c7 45 f8 1a 00 00 00 59 fe 45 08 8d 45 08 50 ff 15 90 01 04 83 f8 02 0f 85 90 00 } //04 00 
		$a_01_1 = {8a 54 0d a8 41 88 50 ff 88 18 40 40 83 f9 28 7c ef } //04 00 
		$a_01_2 = {8b 46 04 ff 36 40 50 8b 46 10 ff 76 08 40 ff 76 0c 50 8b 46 14 05 6c 07 00 00 } //01 00 
		$a_01_3 = {4d 65 73 73 61 67 65 2d 49 44 3a 20 3c 25 64 25 30 32 64 25 30 32 64 25 30 32 64 25 30 32 64 25 30 32 64 25 64 40 6d 78 2e 67 6f 6f 67 6c 65 2e 63 6f 6d 3e } //01 00  Message-ID: <%d%02d%02d%02d%02d%02d%d@mx.google.com>
		$a_01_4 = {5b 61 75 74 6f 72 75 6e 5d } //01 00  [autorun]
		$a_01_5 = {74 66 74 70 20 2d 69 20 25 73 20 67 65 74 20 25 73 } //01 00  tftp -i %s get %s
		$a_01_6 = {46 72 6f 6d 3a 20 79 6f 75 72 20 66 72 69 65 6e 64 2e } //00 00  From: your friend.
	condition:
		any of ($a_*)
 
}