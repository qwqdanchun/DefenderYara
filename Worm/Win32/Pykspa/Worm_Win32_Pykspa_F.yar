
rule Worm_Win32_Pykspa_F{
	meta:
		description = "Worm:Win32/Pykspa.F,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 45 41 52 43 48 20 46 52 49 45 4e 44 53 } //01 00  SEARCH FRIENDS
		$a_01_1 = {53 6b 79 70 65 43 6f 6e 74 72 6f 6c 41 50 49 41 74 74 61 63 68 } //01 00  SkypeControlAPIAttach
		$a_01_2 = {53 6b 79 70 65 2d 41 50 49 2d 54 65 73 74 2d } //01 00  Skype-API-Test-
		$a_00_3 = {5c 4e 65 77 53 6b 79 70 65 41 64 2e 70 64 62 } //01 00  \NewSkypeAd.pdb
		$a_00_4 = {5b 41 64 5d 20 53 65 6e 74 20 61 6c 6c 20 6d 65 73 73 61 67 65 73 } //01 00  [Ad] Sent all messages
		$a_00_5 = {5b 41 64 5d 20 53 68 75 74 74 69 6e 67 20 64 6f 77 6e 20 69 6e 20 35 20 73 65 63 6f 6e 64 73 } //01 00  [Ad] Shutting down in 5 seconds
		$a_00_6 = {5c 73 65 72 76 69 63 65 73 5c 73 68 61 72 65 64 61 63 63 65 73 73 5c 70 61 72 61 6d 65 74 65 72 73 5c 66 69 72 65 77 61 6c 6c 70 6f 6c 69 63 79 5c 73 74 61 6e 64 61 72 64 70 72 6f 66 69 6c 65 5c 61 75 74 68 6f 72 69 7a 65 64 61 70 70 6c 69 63 61 74 69 6f 6e 73 5c 6c 69 73 74 } //01 00  \services\sharedaccess\parameters\firewallpolicy\standardprofile\authorizedapplications\list
		$a_00_7 = {69 20 66 6f 75 6e 64 20 61 6e 20 69 6e 74 65 72 65 73 74 69 6e 67 20 77 65 62 73 69 74 65 } //00 00  i found an interesting website
	condition:
		any of ($a_*)
 
}