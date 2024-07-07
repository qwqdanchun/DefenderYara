
rule TrojanDownloader_Win32_Agent_XA{
	meta:
		description = "TrojanDownloader:Win32/Agent.XA,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 12 00 17 00 00 "
		
	strings :
		$a_00_0 = {70 73 61 70 69 2e 64 6c 6c } //1 psapi.dll
		$a_00_1 = {23 23 77 73 32 5f 33 32 2e 64 6c 6c } //1 ##ws2_32.dll
		$a_00_2 = {23 23 25 64 2e 65 78 65 } //1 ##%d.exe
		$a_00_3 = {44 6f 77 6e 6c 6f 61 64 65 72 3a 20 66 65 74 63 68 20 4f 4b 2c 20 25 64 } //1 Downloader: fetch OK, %d
		$a_00_4 = {44 6f 77 6e 6c 6f 61 64 65 72 3a 20 63 61 6e 27 74 20 6f 70 65 6e 20 66 69 6c 65 3a 20 25 64 } //1 Downloader: can't open file: %d
		$a_00_5 = {40 40 73 76 63 68 6f 73 74 2e 65 78 65 } //1 @@svchost.exe
		$a_00_6 = {23 23 68 74 74 70 3a 2f 2f 36 34 2e 32 37 2e 30 2e 32 30 35 } //2 ##http://64.27.0.205
		$a_00_7 = {32 31 36 2e 32 35 35 2e 31 38 39 2e 38 35 } //2 216.255.189.85
		$a_00_8 = {77 3a 5c 77 6f 72 6b 5c 76 63 70 72 6a 5c 70 72 6a 5c 64 6f 77 6e 6c 6f 61 64 65 72 5c 52 65 6c 65 61 73 65 5c 69 6e 6a 64 6c 64 72 2e 70 64 62 } //2 w:\work\vcprj\prj\downloader\Release\injdldr.pdb
		$a_00_9 = {68 74 74 70 3a 2f 2f 36 34 2e 32 37 2e 30 2e 32 30 35 2f 75 70 2f 63 61 6c 63 32 2e 62 69 6e } //2 http://64.27.0.205/up/calc2.bin
		$a_00_10 = {25 73 5c 74 25 64 2e 65 78 65 } //1 %s\t%d.exe
		$a_00_11 = {52 53 44 53 6b } //1 RSDSk
		$a_00_12 = {47 65 74 4c 61 73 74 41 63 74 69 76 65 50 6f 70 75 70 } //1 GetLastActivePopup
		$a_00_13 = {2e 3f 41 56 74 79 70 65 5f 69 6e 66 6f 40 40 } //1 .?AVtype_info@@
		$a_00_14 = {42 43 35 45 36 44 41 38 2d 44 44 31 42 2d 31 32 44 44 2d 31 33 39 41 2d 42 35 42 32 33 37 38 43 39 41 30 34 } //1 BC5E6DA8-DD1B-12DD-139A-B5B2378C9A04
		$a_00_15 = {33 36 34 35 46 42 43 44 2d 45 43 44 32 2d 32 33 44 30 2d 42 41 43 34 2d 30 30 44 45 34 35 33 44 45 46 36 42 } //1 3645FBCD-ECD2-23D0-BAC4-00DE453DEF6B
		$a_00_16 = {4e 53 41 50 49 2e 64 6c 6c } //1 NSAPI.dll
		$a_00_17 = {20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 68 00 28 00 28 00 28 00 28 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 20 00 48 00 } //1          h((((                  H
		$a_00_18 = {53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //1 SetThreadContext
		$a_01_19 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //1 InternetReadFile
		$a_01_20 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
		$a_00_21 = {48 74 74 70 51 75 65 72 79 49 6e 66 6f 41 } //1 HttpQueryInfoA
		$a_00_22 = {50 56 56 51 56 89 74 24 44 c7 44 24 48 44 00 00 00 66 c7 44 24 78 05 00 ff 15 34 80 40 00 85 c0 } //3
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*2+(#a_00_9  & 1)*2+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_00_21  & 1)*1+(#a_00_22  & 1)*3) >=18
 
}