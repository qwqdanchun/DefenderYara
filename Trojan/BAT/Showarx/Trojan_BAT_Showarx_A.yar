
rule Trojan_BAT_Showarx_A{
	meta:
		description = "Trojan:BAT/Showarx.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 07 00 00 08 00 "
		
	strings :
		$a_80_0 = {3a 2f 2f 67 6f 6f 64 77 65 62 73 68 6f 77 2e 63 6f 6d 2f 72 65 64 69 72 65 63 74 2f 35 37 61 37 36 34 64 30 34 32 62 66 38 } //://goodwebshow.com/redirect/57a764d042bf8  03 00 
		$a_80_1 = {41 64 73 53 68 6f 77 2e 65 78 65 } //AdsShow.exe  02 00 
		$a_00_2 = {5c 50 72 6f 6a 65 63 74 73 5c 41 64 73 53 68 6f 77 5c } //02 00 
		$a_00_3 = {5c 41 64 73 53 68 6f 77 5c 6f 62 6a 5c } //02 00 
		$a_00_4 = {5c 41 64 73 53 68 6f 77 2e 70 64 62 } //01 00 
		$a_00_5 = {53 6c 65 65 70 00 41 64 64 54 6f 53 74 61 72 74 75 70 00 43 75 72 72 65 6e 74 55 73 65 72 } //01 00 
		$a_00_6 = {5c 73 61 6d 69 5c 44 6f 63 75 6d 65 6e 74 73 5c } //00 00 
		$a_00_7 = {5d 04 00 00 c8 } //9b 03 
	condition:
		any of ($a_*)
 
}