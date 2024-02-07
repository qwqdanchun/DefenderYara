
rule PWS_Win32_Grolf_A{
	meta:
		description = "PWS:Win32/Grolf.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {ac 84 c0 74 09 2c 59 34 03 04 12 aa } //01 00 
		$a_01_1 = {68 04 00 01 40 51 6a 00 ff d0 5f b0 01 } //02 00 
		$a_03_2 = {50 75 15 80 7c 34 90 01 01 41 75 0e 80 7c 34 90 01 01 53 75 07 80 7c 34 90 01 01 53 90 00 } //01 00 
		$a_01_3 = {74 2f b2 0a 80 f9 0d 75 1c 38 94 04 } //01 00 
		$a_01_4 = {4d 00 53 00 48 00 45 00 4c 00 50 00 44 00 4c 00 4c 00 } //01 00  MSHELPDLL
		$a_01_5 = {4d 00 53 00 53 00 45 00 43 00 44 00 52 00 56 00 } //00 00  MSSECDRV
	condition:
		any of ($a_*)
 
}