
rule TrojanDownloader_O97M_Obfuse_JT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 52 75 6e 20 [0-04] 2c } //1
		$a_03_1 = {3d 20 52 65 70 6c 61 63 65 28 22 74 65 73 74 22 2c 20 22 74 65 73 74 22 2c 20 43 68 72 28 [0-06] 29 29 } //1
		$a_01_2 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //1 Sub AutoOpen()
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Obfuse_JT_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 73 3a 2f 2f 73 69 6d 69 6c 61 72 77 65 62 74 6f 6f 6c 2e 72 75 2f 6a 39 38 6a 32 33 39 30 32 64 73 73 64 66 32 33 34 64 66 73 64 66 2e 70 68 70 } //1 https://similarwebtool.ru/j98j23902dssdf234dfsdf.php
		$a_00_1 = {61 48 52 30 63 48 4d 36 4c 79 39 7a 61 57 31 70 62 47 46 79 64 32 56 69 64 47 39 76 62 43 35 79 64 53 39 71 4f 54 68 71 4d 6a 4d 35 4d 44 4a 6b 63 33 4e 6b 5a 6a 49 7a 4e 47 52 6d 63 32 52 6d 4c 6e 42 6f 63 41 3d 3d } //1 aHR0cHM6Ly9zaW1pbGFyd2VidG9vbC5ydS9qOThqMjM5MDJkc3NkZjIzNGRmc2RmLnBocA==
		$a_00_2 = {55 73 65 72 4e 61 6d 65 22 22 22 20 26 20 22 3a 22 22 22 20 26 20 45 6e 76 69 72 6f 6e 28 22 55 73 65 72 6e 61 6d 65 22 29 20 26 20 22 22 22 22 20 26 20 22 2c 22 22 46 69 6c 65 6e 61 6d 65 22 22 3a 22 20 26 } //1 UserName""" & ":""" & Environ("Username") & """" & ",""Filename"":" &
		$a_00_3 = {53 74 72 43 6f 6e 76 28 62 4f 75 74 2c 20 76 62 55 6e 69 63 6f 64 65 29 } //1 StrConv(bOut, vbUnicode)
		$a_00_4 = {28 55 42 6f 75 6e 64 28 62 49 6e 29 20 2b 20 31 29 20 5c 20 34 29 20 2a 20 33 29 20 2d 20 31 } //1 (UBound(bIn) + 1) \ 4) * 3) - 1
		$a_00_5 = {4d 69 64 28 4d 79 56 61 6c 2c 20 69 2c 20 31 29 29 20 26 20 22 2c 22 } //1 Mid(MyVal, i, 1)) & ","
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Obfuse_JT_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 07 00 00 "
		
	strings :
		$a_01_0 = {30 78 66 63 2c 20 30 78 65 38 2c 20 30 78 38 39 2c 20 30 78 30 30 2c 20 30 78 30 30 2c 20 30 78 30 30 2c 20 30 78 36 30 2c 20 30 78 38 39 2c 20 30 78 65 35 2c 20 30 78 33 31 2c 20 30 78 64 32 2c 20 30 78 36 34 } //1 0xfc, 0xe8, 0x89, 0x00, 0x00, 0x00, 0x60, 0x89, 0xe5, 0x31, 0xd2, 0x64
		$a_01_1 = {30 78 38 62 2c 20 30 78 35 32 2c 20 30 78 33 30 2c 20 30 78 38 62 2c 20 30 78 35 32 2c 20 30 78 30 63 2c 20 30 78 38 62 2c 20 30 78 35 32 2c 20 30 78 31 34 2c 20 30 78 38 62 2c 20 30 78 37 32 2c 20 30 78 32 38 2c 20 30 78 30 66 2c 20 30 78 62 37 2c 20 30 78 34 61 2c 20 30 78 32 36 } //1 0x8b, 0x52, 0x30, 0x8b, 0x52, 0x0c, 0x8b, 0x52, 0x14, 0x8b, 0x72, 0x28, 0x0f, 0xb7, 0x4a, 0x26
		$a_01_2 = {78 30 39 2c 20 30 78 36 38 2c 20 30 78 61 61 2c 20 30 78 63 35 2c 20 30 78 65 32 2c 20 30 78 35 64 2c 20 30 78 66 66 2c 20 30 78 64 35 2c 20 30 78 38 39 2c 20 30 78 63 31 2c 20 30 78 36 38 2c 20 30 78 34 35 2c 20 30 78 32 31 2c 20 30 78 35 65 2c 20 30 78 33 31 2c 20 30 78 66 66 2c 20 30 78 64 35 } //1 x09, 0x68, 0xaa, 0xc5, 0xe2, 0x5d, 0xff, 0xd5, 0x89, 0xc1, 0x68, 0x45, 0x21, 0x5e, 0x31, 0xff, 0xd5
		$a_01_3 = {30 78 65 38 2c 20 30 78 38 39 2c 20 30 78 66 64 2c 20 30 78 66 66 2c 20 30 78 66 66 2c 20 30 78 36 31 2c 20 30 78 37 30 2c 20 30 78 37 30 2c 20 30 78 32 65 2c 20 30 78 36 39 2c 20 30 78 36 33 2c 20 30 78 36 35 2c 20 30 78 36 36 2c 20 30 78 36 39 2c 20 30 78 36 63 2c 20 30 78 36 35 } //1 0xe8, 0x89, 0xfd, 0xff, 0xff, 0x61, 0x70, 0x70, 0x2e, 0x69, 0x63, 0x65, 0x66, 0x69, 0x6c, 0x65
		$a_01_4 = {77 69 6e 64 69 72 20 26 20 22 5c 4d 69 63 72 6f 73 6f 66 74 2e 4e 45 54 5c 46 72 61 6d 65 77 6f 72 6b 5c 76 34 2e 30 2e 33 30 33 31 39 5c 4d 53 42 75 69 6c 64 2e 65 78 65 20 22 20 26 20 52 65 70 6c 61 63 65 28 70 70 61 74 68 2c 20 22 20 22 2c 20 22 22 22 20 22 22 22 29 } //1 windir & "\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe " & Replace(ppath, " ", """ """)
		$a_01_5 = {70 72 6f 66 69 6c 65 20 2b 20 22 5c 44 6f 63 75 6d 65 6e 74 73 5c 74 65 6d 70 6c 61 74 65 2e 78 6d 6c } //1 profile + "\Documents\template.xml
		$a_01_6 = {52 65 70 6c 61 63 65 28 54 65 6d 70 6c 61 74 65 2c 20 22 40 22 2c 20 22 22 22 22 29 } //1 Replace(Template, "@", """")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=6
 
}