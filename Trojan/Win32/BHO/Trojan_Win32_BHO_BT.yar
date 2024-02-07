
rule Trojan_Win32_BHO_BT{
	meta:
		description = "Trojan:Win32/BHO.BT,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 03 00 "
		
	strings :
		$a_00_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 66 00 61 00 73 00 74 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 73 00 65 00 61 00 72 00 63 00 68 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 65 00 73 00 75 00 6c 00 74 00 73 00 2f 00 72 00 65 00 73 00 75 00 6c 00 74 00 73 00 2e 00 61 00 73 00 70 00 78 00 3f 00 71 00 3d 00 } //03 00  http://www.fastbrowsersearch.com/results/results.aspx?q=
		$a_00_1 = {7b 00 30 00 35 00 35 00 30 00 36 00 39 00 46 00 33 00 2d 00 46 00 37 00 38 00 42 00 2d 00 34 00 42 00 44 00 31 00 2d 00 41 00 32 00 37 00 37 00 2d 00 46 00 45 00 36 00 36 00 36 00 34 00 38 00 44 00 33 00 33 00 30 00 30 00 7d 00 } //01 00  {055069F3-F78B-4BD1-A277-FE66648D3300}
		$a_02_2 = {5c 00 69 00 65 00 70 00 6c 00 75 00 67 00 69 00 6e 00 5c 00 62 00 68 00 6f 00 90 02 05 5c 00 90 00 } //01 00 
		$a_02_3 = {5c 69 65 70 6c 75 67 69 6e 5c 62 68 6f 90 02 05 5c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}