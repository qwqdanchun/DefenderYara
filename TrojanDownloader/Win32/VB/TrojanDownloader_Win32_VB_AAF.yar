
rule TrojanDownloader_Win32_VB_AAF{
	meta:
		description = "TrojanDownloader:Win32/VB.AAF,SIGNATURE_TYPE_PEHSTR_EXT,12 02 fffffff4 01 0e 00 00 "
		
	strings :
		$a_01_0 = {2f 00 72 00 65 00 70 00 6f 00 72 00 74 00 69 00 6e 00 67 00 2f 00 49 00 70 00 47 00 65 00 6f 00 2e 00 61 00 73 00 70 00 78 00 } //100 /reporting/IpGeo.aspx
		$a_01_1 = {93 92 e5 48 80 98 cf 11 97 54 00 aa 00 c0 09 08 } //50
		$a_00_2 = {37 00 38 00 45 00 31 00 42 00 44 00 44 00 31 00 2d 00 39 00 39 00 34 00 31 00 2d 00 31 00 31 00 63 00 66 00 2d 00 39 00 37 00 35 00 36 00 2d 00 30 00 30 00 41 00 41 00 30 00 30 00 43 00 30 00 30 00 39 00 30 00 38 00 } //50 78E1BDD1-9941-11cf-9756-00AA00C00908
		$a_01_3 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 4e 00 54 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 63 00 61 00 6c 00 63 00 2e 00 65 00 78 00 65 00 } //50 C:\WINNT\System32\calc.exe
		$a_01_4 = {49 6e 65 74 43 74 6c 73 4f 62 6a 65 63 74 73 2e 49 6e 65 74 } //50 InetCtlsObjects.Inet
		$a_01_5 = {44 65 6c 65 74 65 44 6f 77 6e 6c 6f 61 64 41 70 70 } //50 DeleteDownloadApp
		$a_00_6 = {53 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //50 Scripting.FileSystemObject
		$a_01_7 = {46 00 6f 00 6c 00 64 00 65 00 72 00 45 00 78 00 69 00 73 00 74 00 73 00 } //50 FolderExists
		$a_01_8 = {42 00 75 00 6e 00 64 00 6c 00 65 00 42 00 61 00 73 00 65 00 31 00 } //50 BundleBase1
		$a_01_9 = {5c 00 61 00 72 00 64 00 43 00 6f 00 30 00 31 00 31 00 30 00 36 00 34 00 2e 00 76 00 62 00 70 00 } //20 \ardCo011064.vbp
		$a_03_10 = {5c 00 76 00 62 00 5f 00 6c 00 64 00 72 00 5f 00 63 00 6f 00 64 00 65 00 5c 00 90 02 20 2e 00 76 00 62 00 70 00 90 00 } //20
		$a_01_11 = {36 00 34 00 2e 00 32 00 32 00 35 00 2e 00 } //20 64.225.
		$a_01_12 = {54 00 46 00 2e 00 6c 00 6f 00 67 00 } //10 TF.log
		$a_03_13 = {45 00 55 00 52 00 4f 00 90 02 20 2e 00 65 00 78 00 65 00 90 02 10 4f 00 54 00 48 00 45 00 52 00 90 00 } //10
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*50+(#a_00_2  & 1)*50+(#a_01_3  & 1)*50+(#a_01_4  & 1)*50+(#a_01_5  & 1)*50+(#a_00_6  & 1)*50+(#a_01_7  & 1)*50+(#a_01_8  & 1)*50+(#a_01_9  & 1)*20+(#a_03_10  & 1)*20+(#a_01_11  & 1)*20+(#a_01_12  & 1)*10+(#a_03_13  & 1)*10) >=500
 
}