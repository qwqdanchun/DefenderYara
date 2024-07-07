
rule Trojan_WinNT_MpTest_B{
	meta:
		description = "Trojan:WinNT/MpTest.B,SIGNATURE_TYPE_JAVAHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {37 63 66 38 66 37 66 36 2d 34 61 35 61 2d 34 61 63 37 2d 38 30 32 35 2d 61 65 32 65 34 32 65 33 63 62 33 32 } //1 7cf8f7f6-4a5a-4ac7-8025-ae2e42e3cb32
		$a_00_1 = {33 31 35 64 30 64 38 66 2d 64 37 35 38 2d 34 62 34 34 2d 61 34 31 36 2d 32 33 36 31 66 64 30 37 63 64 32 64 } //1 315d0d8f-d758-4b44-a416-2361fd07cd2d
		$a_00_2 = {30 31 32 36 39 38 31 34 2d 64 66 31 61 2d 34 34 63 65 2d 39 34 36 35 2d 31 66 34 33 62 30 30 37 33 34 65 32 } //1 01269814-df1a-44ce-9465-1f43b00734e2
		$a_00_3 = {64 33 31 62 38 62 39 65 2d 32 65 39 63 2d 34 65 35 35 2d 39 34 32 32 2d 30 66 36 37 32 36 65 33 30 32 33 63 } //1 d31b8b9e-2e9c-4e55-9422-0f6726e3023c
		$a_00_4 = {33 36 31 61 35 62 32 36 2d 61 35 35 66 2d 34 38 31 37 2d 38 66 31 39 2d 66 32 37 64 61 30 66 64 30 37 63 36 } //1 361a5b26-a55f-4817-8f19-f27da0fd07c6
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}