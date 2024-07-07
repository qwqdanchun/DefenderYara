
rule TrojanDownloader_Win32_Zlob_gen_T{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!T,SIGNATURE_TYPE_PEHSTR_EXT,7a 00 79 00 09 00 00 "
		
	strings :
		$a_01_0 = {48 4c 45 46 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 } //50
		$a_01_1 = {2f 00 73 00 65 00 61 00 72 00 63 00 68 00 2e 00 70 00 68 00 70 00 3f 00 71 00 71 00 3d 00 25 00 73 00 } //50 /search.php?qq=%s
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 61 00 75 00 74 00 6f 00 2e 00 73 00 65 00 61 00 72 00 63 00 68 00 2e 00 6d 00 73 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 65 00 73 00 70 00 6f 00 6e 00 73 00 65 00 2e 00 61 00 73 00 70 00 3f 00 4d 00 54 00 3d 00 } //10 http://auto.search.msn.com/response.asp?MT=
		$a_01_3 = {2f 73 65 61 72 63 68 2e 70 68 70 3f 71 71 3d 25 73 } //10 /search.php?qq=%s
		$a_00_4 = {73 65 72 20 68 65 6c 70 65 72 20 6f 62 } //10 ser helper ob
		$a_01_5 = {7b 31 43 33 43 34 36 39 39 2d 42 32 38 35 2d 34 37 35 46 2d 42 45 34 37 2d 30 42 32 36 30 38 38 43 45 38 37 36 7d } //1 {1C3C4699-B285-475F-BE47-0B26088CE876}
		$a_00_6 = {85 c0 75 14 68 2c 01 00 00 6a 08 ff 15 90 01 04 70 ff 15 90 01 04 76 8b 74 24 08 8a 16 84 d2 a3 90 01 04 8b c8 74 10 2b f0 32 74 24 0c 88 11 61 8a 14 0e 84 d2 75 f2 c6 01 00 5e c3 90 00 } //1
		$a_00_7 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e } //1 Software\Microsoft\Internet Explorer\Main
		$a_01_8 = {72 00 65 00 73 00 3a 00 2f 00 2f 00 25 00 73 00 5c 00 73 00 25 00 73 00 25 00 73 00 25 00 73 00 } //1 res://%s\s%s%s%s
	condition:
		((#a_01_0  & 1)*50+(#a_01_1  & 1)*50+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_00_4  & 1)*10+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_01_8  & 1)*1) >=121
 
}