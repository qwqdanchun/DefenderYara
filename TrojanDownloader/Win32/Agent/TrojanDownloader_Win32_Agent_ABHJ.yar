
rule TrojanDownloader_Win32_Agent_ABHJ{
	meta:
		description = "TrojanDownloader:Win32/Agent.ABHJ,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 10 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 63 2e 65 78 65 20 73 74 61 72 74 20 } //01 00  sc.exe start 
		$a_01_1 = {64 65 6c 20 25 30 } //01 00  del %0
		$a_01_2 = {49 45 46 72 61 6d 65 } //01 00  IEFrame
		$a_00_3 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 50 00 68 00 79 00 73 00 69 00 63 00 61 00 6c 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 } //01 00  \Device\PhysicalMemory
		$a_01_4 = {5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 72 65 67 73 76 72 33 32 2e 65 78 65 } //01 00  \WINDOWS\system32\regsvr32.exe
		$a_01_5 = {35 38 2e 34 39 2e 35 38 2e 32 30 } //01 00  58.49.58.20
		$a_01_6 = {73 63 2e 65 78 65 20 64 65 73 63 72 69 70 74 69 6f 6e 20 } //01 00  sc.exe description 
		$a_01_7 = {5c 57 49 4e 44 4f 57 53 5c 73 63 2e 65 78 65 } //01 00  \WINDOWS\sc.exe
		$a_01_8 = {73 74 6f 70 65 64 } //01 00  stoped
		$a_01_9 = {20 2d 64 62 61 74 22 20 74 79 70 65 3d 20 6f 77 6e 20 74 79 70 65 3d 20 69 6e 74 65 72 61 63 74 20 73 74 61 72 74 3d 20 61 75 74 6f 20 44 69 73 70 6c 61 79 4e 61 6d 65 3d 20 } //01 00   -dbat" type= own type= interact start= auto DisplayName= 
		$a_01_10 = {73 63 2e 65 78 65 20 63 72 65 61 74 65 20 } //01 00  sc.exe create 
		$a_01_11 = {43 57 65 62 42 72 6f 77 73 65 72 32 } //01 00  CWebBrowser2
		$a_01_12 = {47 65 74 53 65 63 75 72 69 74 79 49 6e 66 6f } //01 00  GetSecurityInfo
		$a_01_13 = {49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5f 54 72 69 64 65 6e 74 44 6c 67 46 72 61 6d 65 } //01 00  Internet Explorer_TridentDlgFrame
		$a_01_14 = {27 20 74 61 72 67 65 74 3d 27 5f 62 6c 61 6e 6b 27 3e 74 65 73 74 3c 2f 61 3e } //01 00  ' target='_blank'>test</a>
		$a_01_15 = {43 3a 5c 62 6f 6f 74 66 6f 6e 74 2e 62 69 7a } //00 00  C:\bootfont.biz
	condition:
		any of ($a_*)
 
}