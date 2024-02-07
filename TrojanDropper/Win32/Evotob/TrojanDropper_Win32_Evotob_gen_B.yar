
rule TrojanDropper_Win32_Evotob_gen_B{
	meta:
		description = "TrojanDropper:Win32/Evotob.gen!B!!Evotob.gen!B,SIGNATURE_TYPE_ARHSTR_EXT,03 00 03 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 00 10 00 00 74 90 01 01 3d 00 20 00 00 72 90 01 01 3d 00 30 00 00 73 90 01 01 43 eb 90 01 01 3d 00 30 00 00 72 90 01 01 6a 02 eb 90 01 01 3d 00 40 00 00 72 90 01 01 6a 03 90 00 } //01 00 
		$a_01_1 = {ff 65 40 40 ff 65 40 41 ff 65 40 42 ff 65 40 43 ff 65 40 46 ff 65 40 47 ff 65 40 } //02 00 
		$a_01_2 = {22 25 25 77 69 6e 64 69 72 25 25 5c 73 79 73 74 65 6d 33 32 5c 73 64 62 69 6e 73 74 2e 65 78 65 22 20 2f 71 20 2f 75 20 22 25 73 22 00 } //01 00 
		$a_01_3 = {4d 61 7a 69 6c 6c 61 2f 35 2e 30 } //01 00  Mazilla/5.0
		$a_01_4 = {41 6e 74 69 6d 61 6c 77 61 72 65 5c 45 78 63 6c 75 73 69 6f 6e 73 5c 50 72 6f 63 65 73 73 65 73 } //01 00  Antimalware\Exclusions\Processes
		$a_01_5 = {52 75 6e 59 6f 75 72 4d 61 6c 77 61 72 65 48 65 72 65 57 69 74 68 48 69 67 68 49 6e 74 65 67 72 69 74 79 4c 65 76 65 6c } //01 00  RunYourMalwareHereWithHighIntegrityLevel
		$a_00_6 = {3a 5a 6f 6e 65 2e 49 64 65 6e 74 69 66 69 65 72 } //01 00  :Zone.Identifier
		$a_00_7 = {4b 42 33 30 30 30 30 36 31 } //01 00  KB3000061
		$a_00_8 = {24 24 24 53 65 63 75 72 65 20 55 41 50 } //05 00  $$$Secure UAP
	condition:
		any of ($a_*)
 
}