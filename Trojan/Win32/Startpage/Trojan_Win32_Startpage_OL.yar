
rule Trojan_Win32_Startpage_OL{
	meta:
		description = "Trojan:Win32/Startpage.OL,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 00 76 00 62 00 70 00 } //01 00 
		$a_00_1 = {32 00 63 00 34 00 39 00 66 00 38 00 30 00 30 00 2d 00 63 00 32 00 64 00 64 00 2d 00 31 00 31 00 63 00 66 00 2d 00 39 00 61 00 64 00 36 00 2d 00 30 00 30 00 38 00 30 00 63 00 37 00 65 00 37 00 62 00 37 00 38 00 64 00 } //01 00 
		$a_00_2 = {32 00 36 00 37 00 30 00 36 00 33 00 35 00 46 00 36 00 31 00 36 00 34 00 36 00 39 00 33 00 44 00 } //01 00 
		$a_00_3 = {48 00 69 00 6a 00 61 00 63 00 6b 00 20 00 54 00 68 00 69 00 73 00 } //01 00 
		$a_00_4 = {37 00 35 00 37 00 33 00 36 00 35 00 37 00 32 00 35 00 46 00 37 00 30 00 37 00 32 00 36 00 35 00 36 00 36 00 32 00 38 00 } //01 00 
		$a_02_5 = {69 00 6e 00 6e 00 65 00 72 00 48 00 54 00 4d 00 4c 00 90 02 08 34 00 38 00 34 00 42 00 34 00 35 00 35 00 39 00 35 00 46 00 34 00 33 00 35 00 35 00 35 00 32 00 35 00 32 00 34 00 35 00 34 00 45 00 35 00 34 00 35 00 46 00 35 00 35 00 35 00 33 00 34 00 35 00 35 00 32 00 90 00 } //01 00 
		$a_00_6 = {55 44 50 46 6c 6f 6f 64 } //00 00 
	condition:
		any of ($a_*)
 
}