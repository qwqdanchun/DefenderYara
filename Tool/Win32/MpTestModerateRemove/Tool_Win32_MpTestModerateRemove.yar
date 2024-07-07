
rule Tool_Win32_MpTestModerateRemove{
	meta:
		description = "Tool:Win32/MpTestModerateRemove,SIGNATURE_TYPE_PEHSTR,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {34 62 63 37 61 36 38 39 2d 39 61 61 64 2d 34 63 61 35 2d 39 30 33 30 2d 63 61 35 33 31 39 65 30 34 62 37 30 } //1 4bc7a689-9aad-4ca5-9030-ca5319e04b70
		$a_01_1 = {62 36 66 65 38 32 65 35 2d 64 35 62 39 2d 34 30 36 32 2d 39 30 30 34 2d 33 64 34 33 61 61 37 33 64 38 39 63 } //1 b6fe82e5-d5b9-4062-9004-3d43aa73d89c
		$a_01_2 = {38 64 30 36 32 36 36 65 2d 65 39 63 66 2d 34 35 33 63 2d 39 38 64 62 2d 39 35 31 36 30 66 35 62 38 65 65 37 } //1 8d06266e-e9cf-453c-98db-95160f5b8ee7
		$a_01_3 = {37 37 63 62 31 65 32 30 2d 34 35 31 30 2d 34 30 39 36 2d 39 35 33 31 2d 65 66 64 38 65 35 35 62 35 62 63 66 } //1 77cb1e20-4510-4096-9531-efd8e55b5bcf
		$a_01_4 = {33 31 32 62 32 64 66 38 2d 66 61 36 38 2d 34 38 39 33 2d 39 66 37 32 2d 66 31 66 62 62 66 32 61 39 62 34 63 } //1 312b2df8-fa68-4893-9f72-f1fbbf2a9b4c
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}