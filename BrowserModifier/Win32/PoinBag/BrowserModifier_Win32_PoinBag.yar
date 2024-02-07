
rule BrowserModifier_Win32_PoinBag{
	meta:
		description = "BrowserModifier:Win32/PoinBag,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 6f 69 6e 62 61 67 2e 64 6c 6c } //01 00  poinbag.dll
		$a_01_1 = {63 68 65 63 6b 5f 63 6f 75 6e 74 65 72 2e 70 68 70 3f 70 69 64 3d 70 6f 69 6e 74 62 61 67 26 6d 61 63 3d } //01 00  check_counter.php?pid=pointbag&mac=
		$a_01_2 = {43 6f 6d 70 61 72 69 73 6f 6e 5f 70 6f 69 6e 74 62 61 67 2e 64 6c 6c } //01 00  Comparison_pointbag.dll
		$a_01_3 = {70 6f 69 6e 74 62 61 67 5f 73 68 6f 70 } //00 00  pointbag_shop
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_PoinBag_2{
	meta:
		description = "BrowserModifier:Win32/PoinBag,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 6f 69 6e 62 61 67 } //01 00  poinbag
		$a_03_1 = {43 4f 44 45 25 64 90 01 02 53 45 41 52 43 48 55 52 4c 90 01 0b 6b 65 79 63 6f 64 65 2e 64 61 74 90 00 } //01 00 
		$a_01_2 = {64 6f 6d 61 69 6e 72 65 66 65 72 2e 64 61 74 } //01 00  domainrefer.dat
		$a_03_3 = {6a 65 6a 75 2e 6b 72 90 01 04 2e 67 79 65 6f 6e 67 6e 61 6d 2e 6b 72 90 00 } //01 00 
		$a_01_4 = {70 6f 69 6e 62 61 67 75 70 2e 70 64 62 } //01 00  poinbagup.pdb
		$a_03_5 = {44 4f 57 4e 55 52 4c 90 01 01 46 49 4c 45 4e 41 4d 45 90 01 04 53 4f 46 54 57 41 52 45 5c 70 6f 69 6e 62 61 67 90 00 } //01 00 
		$a_01_6 = {45 78 65 74 6f 64 61 79 } //00 00  Exetoday
	condition:
		any of ($a_*)
 
}