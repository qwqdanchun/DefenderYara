
rule PWS_Win32_OnLineGames_BZ_dll{
	meta:
		description = "PWS:Win32/OnLineGames.BZ!dll,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {2f 70 6f 73 74 6c 79 2e 41 73 70 90 02 02 25 73 3a 25 73 00 00 00 46 6f 72 74 68 67 6f 6e 65 72 00 00 25 73 3f 73 65 72 76 65 72 3d 25 73 26 67 61 6d 65 69 64 3d 25 73 26 70 61 73 73 3d 90 00 } //01 00 
		$a_02_1 = {2f 70 6f 73 74 6c 79 2e 61 73 70 00 00 90 01 04 00 00 00 00 68 74 74 70 3a 2f 2f 77 77 77 2e 7a 6b 64 35 32 30 2e 63 6e 90 00 } //01 00 
		$a_01_2 = {50 43 49 4b 20 2d 20 50 61 74 63 68 20 43 6c 69 65 6e 74 00 68 74 74 70 3a 2f 2f 70 61 74 63 68 2e 70 63 69 6b 63 68 69 6e 61 2e 63 6f 6d 2f 70 61 74 63 68 69 6e 66 6f } //00 00 
	condition:
		any of ($a_*)
 
}