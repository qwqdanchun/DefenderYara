
rule BrowserModifier_Win32_Foxiebro{
	meta:
		description = "BrowserModifier:Win32/Foxiebro,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 6d 67 3f 61 6c 70 68 61 3d } //01 00  /mg?alpha=
		$a_01_1 = {61 63 74 3d 69 66 26 63 67 3d } //01 00  act=if&cg=
		$a_01_2 = {26 6d 76 3d 33 26 65 6e 63 3d 31 } //01 00  &mv=3&enc=1
		$a_01_3 = {51 75 65 72 79 53 74 72 69 6e 67 20 3d 20 69 74 3d 6c 6f 75 64 } //01 00  QueryString = it=loud
		$a_01_4 = {70 6c 75 67 69 6e 2d 63 6f 6e 74 61 69 6e 65 72 } //01 00  plugin-container
		$a_01_5 = {7b 31 41 41 36 30 30 35 34 2d 35 37 44 39 2d 34 46 39 39 2d 39 41 35 35 2d 44 30 46 42 46 42 45 37 45 43 44 33 7d } //01 00  {1AA60054-57D9-4F99-9A55-D0FBFBE7ECD3}
		$a_01_6 = {7b 34 41 41 34 36 44 34 39 2d 34 35 39 46 2d 34 33 35 38 2d 42 34 44 31 2d 31 36 39 30 34 38 35 34 37 43 32 33 7d } //01 00  {4AA46D49-459F-4358-B4D1-169048547C23}
		$a_03_7 = {68 74 74 70 3a 2f 2f 69 6e 73 74 61 6c 6c 2e 90 12 30 00 2e 63 6f 6d 2f 69 68 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}