
rule Worm_Win32_Autorun_YG{
	meta:
		description = "Worm:Win32/Autorun.YG,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {6a 5b 51 ff d6 6a 61 8d 95 90 01 04 52 ff d6 8d 85 90 01 04 6a 75 50 ff d6 8d 8d 90 01 04 bb 08 00 00 00 6a 6e 51 90 00 } //02 00 
		$a_03_1 = {0f bf c8 83 f1 90 01 01 51 ff 15 90 01 02 40 00 8b d0 8d 4d d8 ff d7 50 90 00 } //01 00 
		$a_01_2 = {5c 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_3 = {36 00 38 00 37 00 34 00 37 00 34 00 37 00 30 00 33 00 41 00 32 00 46 00 32 00 46 00 36 00 39 00 36 00 45 00 36 00 43 00 36 00 46 00 37 00 36 00 36 00 35 00 32 00 45 00 } //01 00 
		$a_01_4 = {33 00 41 00 35 00 43 00 36 00 31 00 37 00 35 00 37 00 34 00 36 00 46 00 37 00 32 00 37 00 35 00 36 00 45 00 32 00 45 00 } //01 00 
		$a_01_5 = {37 00 37 00 36 00 39 00 36 00 45 00 36 00 38 00 36 00 35 00 36 00 43 00 37 00 30 00 33 00 33 00 33 00 32 00 32 00 45 00 36 00 35 00 37 00 38 00 36 00 35 00 } //01 00 
		$a_01_6 = {37 00 37 00 36 00 43 00 36 00 46 00 32 00 45 00 36 00 35 00 37 00 38 00 36 00 35 00 } //00 00 
	condition:
		any of ($a_*)
 
}