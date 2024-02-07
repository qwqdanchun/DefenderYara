
rule Trojan_WinNT_MpTest_A{
	meta:
		description = "Trojan:WinNT/MpTest.A,SIGNATURE_TYPE_JAVAHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {36 32 32 37 37 36 34 31 2d 30 33 35 39 2d 34 32 37 61 2d 38 63 37 64 2d 32 39 39 63 33 36 36 38 37 35 39 62 } //01 00  62277641-0359-427a-8c7d-299c3668759b
		$a_00_1 = {61 35 39 34 34 38 32 38 2d 63 36 39 39 2d 34 32 65 39 2d 62 63 33 61 2d 33 61 39 63 37 33 30 39 66 39 34 37 } //01 00  a5944828-c699-42e9-bc3a-3a9c7309f947
		$a_00_2 = {32 32 34 38 32 66 64 31 2d 65 35 34 63 2d 34 31 65 34 2d 62 35 39 35 2d 63 30 35 63 31 33 35 35 37 35 36 31 } //01 00  22482fd1-e54c-41e4-b595-c05c13557561
		$a_00_3 = {33 37 63 34 31 64 61 33 2d 35 61 33 36 2d 34 37 66 38 2d 39 63 35 31 2d 65 66 30 63 31 62 33 31 37 37 62 30 } //01 00  37c41da3-5a36-47f8-9c51-ef0c1b3177b0
		$a_00_4 = {66 64 35 64 33 39 66 34 2d 62 33 31 66 2d 34 36 36 34 2d 62 31 62 61 2d 31 31 65 37 62 35 64 37 39 38 34 66 } //01 00  fd5d39f4-b31f-4664-b1ba-11e7b5d7984f
		$a_00_5 = {b2 12 b6 b2 12 b6 b2 12 b6 b2 12 b6 b2 12 b6 b1 } //00 00 
	condition:
		any of ($a_*)
 
}