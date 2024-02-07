
rule SoftwareBundler_Win32_Chindo{
	meta:
		description = "SoftwareBundler:Win32/Chindo,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 05 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4d 75 74 65 78 41 28 69 20 30 2c 20 69 20 30 2c 20 74 20 22 4a 57 42 43 6c 69 65 6e 74 22 29 } //05 00  CreateMutexA(i 0, i 0, t "JWBClient")
		$a_01_1 = {5c 49 6e 74 72 65 6e 65 74 20 45 78 70 6c 6f 72 65 72 2e 6c 6e 6b } //02 00  \Intrenet Explorer.lnk
		$a_01_2 = {5c 69 2e 72 61 72 00 } //02 00 
		$a_01_3 = {24 24 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 00 } //01 00 
		$a_01_4 = {2f 73 69 6c 65 6e 74 00 67 65 74 } //01 00 
		$a_01_5 = {64 6f 77 6e 6c 6f 61 64 5f 71 75 69 65 74 } //01 00  download_quiet
		$a_03_6 = {4f 70 65 6e 20 90 02 0c 2e 6a 70 67 00 90 00 } //01 00 
		$a_03_7 = {4f 70 65 6e 20 90 01 07 2f 90 01 04 2e 63 73 73 00 90 00 } //00 00 
		$a_00_8 = {78 db 00 00 0c 00 0c 00 05 } //00 00 
	condition:
		any of ($a_*)
 
}
rule SoftwareBundler_Win32_Chindo_2{
	meta:
		description = "SoftwareBundler:Win32/Chindo,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 05 00 00 04 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 64 6c 2e 73 74 61 74 69 63 2e 69 71 69 79 69 2e 63 6f 6d 2f 68 7a 2f 49 51 49 59 49 73 65 74 75 70 5f 73 65 6e 78 69 6e 67 40 6b 62 30 31 30 2e 65 78 65 } //03 00  http://dl.static.iqiyi.com/hz/IQIYIsetup_senxing@kb010.exe
		$a_01_1 = {53 6f 48 75 56 41 5f 34 2e 35 2e 37 37 2e 30 2d 63 32 30 37 37 31 35 2d 6e 74 69 2d 6e 67 2d 74 70 2d 73 2e 65 78 65 } //02 00  SoHuVA_4.5.77.0-c207715-nti-ng-tp-s.exe
		$a_01_2 = {68 74 74 70 3a 2f 2f 69 6e 74 2e 64 70 6f 6f 6c 2e 73 69 6e 61 2e 63 6f 6d 2e 63 6e 2f 69 70 6c 6f 6f 6b 75 70 2f 69 70 6c 6f 6f 6b 75 70 2e 70 68 70 } //02 00  http://int.dpool.sina.com.cn/iplookup/iplookup.php
		$a_01_3 = {43 3a 5c 54 45 4d 50 5c 32 2e 6a 70 67 } //01 00  C:\TEMP\2.jpg
		$a_01_4 = {54 65 6e 63 65 6e 74 5c 51 51 42 72 6f 77 73 65 72 5c 75 6e 69 6e 73 74 2e 65 78 65 } //00 00  Tencent\QQBrowser\uninst.exe
		$a_00_5 = {78 dc 00 } //00 05 
	condition:
		any of ($a_*)
 
}
rule SoftwareBundler_Win32_Chindo_3{
	meta:
		description = "SoftwareBundler:Win32/Chindo,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {5c 31 2e 67 69 66 90 02 10 2a 28 69 20 30 29 20 69 20 2e 52 30 90 02 08 41 64 76 61 70 69 33 32 3a 3a 52 65 67 4f 70 65 6e 4b 65 79 28 69 20 30 78 38 30 30 30 30 30 30 32 90 00 } //01 00 
		$a_01_1 = {31 2e 7a 69 70 00 2f 73 69 6c 65 6e 74 00 67 65 74 00 fd 99 80 5c 31 2e 7a 69 70 00 31 3a 31 00 } //01 00 
		$a_01_2 = {2f 32 30 2e 68 74 6d 6c 00 4f 70 65 6e 20 fd 83 80 fd 85 80 2f 32 30 2e 68 74 6d 6c 00 41 } //01 00 
		$a_01_3 = {2f 34 30 2e 68 74 6d 6c 00 4f 70 65 6e 20 fd 83 80 fd 85 80 2f 34 30 2e 68 74 6d 6c 00 41 } //01 00 
		$a_01_4 = {3a 3a 43 72 65 61 74 65 4d 75 74 65 78 41 28 69 20 30 2c 20 69 20 30 2c 20 74 20 22 31 22 29 20 69 20 2e 72 31 20 3f 65 } //00 00  ::CreateMutexA(i 0, i 0, t "1") i .r1 ?e
	condition:
		any of ($a_*)
 
}
rule SoftwareBundler_Win32_Chindo_4{
	meta:
		description = "SoftwareBundler:Win32/Chindo,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {3a 3a 43 72 65 61 74 65 4d 75 74 65 78 41 28 69 20 30 2c 20 69 20 30 2c 20 74 20 22 90 02 10 22 29 20 69 20 2e 72 31 20 3f 65 90 00 } //01 00 
		$a_03_1 = {fd 9a 80 5c 90 0f 01 00 2e 69 63 6f 00 53 6f 66 74 00 41 31 00 41 32 00 41 33 00 46 31 00 55 31 90 00 } //01 00 
		$a_01_2 = {5c 69 2e 72 61 72 00 fd 8f 80 00 64 6f 77 6e 6c 6f 61 64 5f 71 75 69 65 74 00 31 3a 31 } //01 00 
		$a_03_3 = {5c 55 6e 69 6e 73 74 61 6c 6c 2e 65 78 65 90 02 20 5c 55 6e 69 6e 73 74 61 6c 6c 2e 65 78 65 90 02 20 5c 75 6e 69 6e 73 74 2e 6c 6e 6b 00 90 00 } //01 00 
		$a_03_4 = {2e 69 63 6f 00 2f 53 49 4c 45 4e 54 00 90 02 04 4f 4b 00 90 00 } //01 00 
		$a_03_5 = {4f 70 65 6e 20 90 01 0b 2e 6a 70 67 90 01 04 5c 49 6e 74 72 65 6e 65 74 20 45 78 70 6c 6f 72 65 72 2e 6c 6e 6b 90 01 04 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 69 65 78 70 6c 6f 72 65 2e 65 78 65 00 31 30 00 90 00 } //01 00 
		$a_01_6 = {5c 69 2e 72 61 72 00 fd 8f 80 00 2f 73 69 6c 65 6e 74 00 67 65 74 00 31 3a 31 } //00 00 
	condition:
		any of ($a_*)
 
}
rule SoftwareBundler_Win32_Chindo_5{
	meta:
		description = "SoftwareBundler:Win32/Chindo,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {28 69 20 30 2c 20 69 20 30 2c 20 74 20 22 4a 57 42 43 6c 69 65 6e 74 22 29 } //01 00  (i 0, i 0, t "JWBClient")
		$a_03_1 = {2f 70 70 74 76 2e 63 73 73 00 4f 70 65 6e 90 02 0a 2f 70 70 74 76 2e 63 73 73 90 00 } //01 00 
		$a_03_2 = {5c 49 6e 74 72 65 6e 65 74 20 45 78 70 6c 6f 72 65 72 2e 6c 6e 6b 00 90 01 03 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 69 65 78 70 6c 6f 72 65 2e 65 78 65 90 00 } //01 00 
		$a_03_3 = {2f 74 65 73 74 2e 74 78 74 00 90 01 03 5c 74 65 73 74 2e 62 61 74 00 4f 70 65 6e 90 00 } //01 00 
		$a_03_4 = {5c 7a 78 79 90 01 01 2e 6a 70 67 00 53 6f 66 74 90 02 10 53 6f 66 74 4e 61 6d 65 00 53 6f 66 74 4c 69 6e 6b 00 53 6f 66 74 50 72 6d 00 90 00 } //01 00 
		$a_03_5 = {5c 55 6e 6c 6f 61 64 2e 65 78 65 00 90 02 20 5c 55 6e 6c 6f 61 64 2e 6c 6e 6b 00 90 00 } //01 00 
		$a_01_6 = {61 48 52 30 63 44 6f 76 4c 32 6c 75 64 43 35 6b 63 47 39 76 62 43 35 7a 61 57 35 68 4c 6d 4e 76 62 53 35 6a 62 69 39 70 63 47 78 76 62 32 74 31 63 43 39 70 63 47 78 76 62 32 74 31 63 43 35 77 61 48 41 } //01 00  aHR0cDovL2ludC5kcG9vbC5zaW5hLmNvbS5jbi9pcGxvb2t1cC9pcGxvb2t1cC5waHA
		$a_01_7 = {61 48 52 30 63 44 6f 76 4c 33 4e 76 5a 6e 52 77 61 47 39 30 62 } //00 00  aHR0cDovL3NvZnRwaG90b
	condition:
		any of ($a_*)
 
}
rule SoftwareBundler_Win32_Chindo_6{
	meta:
		description = "SoftwareBundler:Win32/Chindo,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 64 6f 77 6e 32 2e 75 63 2e 63 6e 2f 70 63 62 72 6f 77 73 65 72 2f 64 6f 77 6e 2e 70 68 70 3f 70 69 64 3d 34 33 39 36 } //02 00  http://down2.uc.cn/pcbrowser/down.php?pid=4396
		$a_01_1 = {68 74 74 70 3a 2f 2f 6d 69 73 63 2e 77 63 64 2e 71 71 2e 63 6f 6d 2f 61 70 70 3f 70 61 63 6b 61 67 65 4e 61 6d 65 3d 70 63 71 71 62 72 6f 77 73 65 72 26 63 68 61 6e 6e 65 6c 49 64 3d 38 31 35 32 39 } //02 00  http://misc.wcd.qq.com/app?packageName=pcqqbrowser&channelId=81529
		$a_03_2 = {66 74 70 3a 2f 2f 64 6f 77 6e 6c 6f 61 64 2e 66 65 69 73 75 38 2e 63 6f 6d 3a 32 32 2f 90 05 08 06 61 2d 7a 30 2d 39 5f 31 32 30 32 30 30 30 90 04 03 03 30 2d 39 2e 74 78 74 90 00 } //01 00 
		$a_01_3 = {68 74 74 70 3a 2f 2f 64 6f 77 6e 2e 6b 75 77 6f 2e 63 6e 2f 6d 62 6f 78 2f 6b 75 77 6f 5f 6a 6d 36 33 34 2e 65 78 65 } //02 00  http://down.kuwo.cn/mbox/kuwo_jm634.exe
		$a_03_4 = {66 74 70 3a 2f 2f 66 2e 69 31 32 33 36 2e 63 6f 6d 2f 72 61 76 90 05 0a 06 61 2d 7a 30 2d 39 2f 72 61 76 33 34 39 30 30 32 32 2e 65 78 65 90 00 } //01 00 
		$a_03_5 = {68 74 74 70 3a 2f 2f 77 2e 78 2e 62 61 69 64 75 2e 63 6f 6d 2f 67 6f 2f 90 03 04 04 6d 69 6e 69 66 75 6c 6c 2f 32 30 31 2f 31 32 30 32 30 30 30 90 04 03 03 30 2d 39 90 00 } //00 00 
		$a_00_6 = {80 10 00 00 a9 } //6c 5d 
	condition:
		any of ($a_*)
 
}