
rule Trojan_Win32_BHO_DK{
	meta:
		description = "Trojan:Win32/BHO.DK,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {66 83 3e 27 75 10 40 3b 90 01 01 73 0b ba 27 00 00 00 66 89 11 83 c1 02 40 83 c6 02 3b 90 01 01 72 d4 90 00 } //01 00 
		$a_00_1 = {7b 00 41 00 33 00 37 00 35 00 32 00 45 00 46 00 38 00 2d 00 43 00 36 00 33 00 33 00 2d 00 34 00 42 00 36 00 37 00 2d 00 39 00 35 00 43 00 37 00 2d 00 38 00 36 00 41 00 44 00 35 00 33 00 36 00 39 00 35 00 46 00 43 00 31 00 7d 00 } //01 00  {A3752EF8-C633-4B67-95C7-86AD53695FC1}
		$a_00_2 = {2e 63 6f 6d 2f 3f 75 72 6c 3d 68 74 74 70 3a 2f 2f 67 6f 67 6f 2e } //01 00  .com/?url=http://gogo.
		$a_00_3 = {26 63 6d 5f 69 64 3d 26 70 6d 5f 69 64 3d } //01 00  &cm_id=&pm_id=
		$a_00_4 = {74 64 5c 74 61 6f 39 36 5c 74 61 6f 39 36 5c 52 65 6c 65 61 73 65 5c } //00 00  td\tao96\tao96\Release\
	condition:
		any of ($a_*)
 
}