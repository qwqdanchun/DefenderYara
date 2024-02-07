
rule Trojan_Win32_Startpage_gen_C{
	meta:
		description = "Trojan:Win32/Startpage.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,65 00 64 00 13 00 00 0a 00 "
		
	strings :
		$a_01_0 = {53 00 74 00 61 00 72 00 74 00 20 00 50 00 61 00 67 00 65 00 } //0a 00  Start Page
		$a_01_1 = {5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 4d 00 61 00 69 00 6e 00 } //0a 00  \Software\Microsoft\Internet Explorer\Main
		$a_01_2 = {5c 00 72 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 5c 00 75 00 73 00 65 00 72 00 } //0a 00  \registry\user
		$a_01_3 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 } //0a 00  \SystemRoot
		$a_01_4 = {6e 74 6f 73 6b 72 6e 6c 2e 65 78 65 } //0a 00  ntoskrnl.exe
		$a_01_5 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //0a 00  KeServiceDescriptorTable
		$a_01_6 = {5a 77 53 65 74 56 61 6c 75 65 4b 65 79 } //0a 00  ZwSetValueKey
		$a_01_7 = {5a 77 57 72 69 74 65 46 69 6c 65 } //0a 00  ZwWriteFile
		$a_01_8 = {75 73 65 72 69 6e 69 74 2e 65 78 65 } //01 00  userinit.exe
		$a_01_9 = {77 77 77 61 2e 35 30 30 39 2e 63 6e } //01 00  wwwa.5009.cn
		$a_01_10 = {77 77 77 62 2e 35 30 30 39 2e 63 6e } //01 00  wwwb.5009.cn
		$a_01_11 = {77 77 77 63 2e 35 30 30 39 2e 63 6e } //01 00  wwwc.5009.cn
		$a_01_12 = {77 77 77 64 2e 35 30 30 39 2e 63 6e } //01 00  wwwd.5009.cn
		$a_01_13 = {77 77 77 65 2e 35 30 30 39 2e 63 6e } //01 00  wwwe.5009.cn
		$a_01_14 = {77 77 77 66 2e 35 30 30 39 2e 63 6e } //01 00  wwwf.5009.cn
		$a_01_15 = {77 77 77 67 2e 35 30 30 39 2e 63 6e } //01 00  wwwg.5009.cn
		$a_01_16 = {77 77 77 2e 68 61 6f 6c 32 33 2e 6e 65 74 } //01 00  www.haol23.net
		$a_01_17 = {34 31 39 39 2e 35 30 30 39 2e 63 6e } //0a 00  4199.5009.cn
		$a_03_18 = {8b ec 83 ec 34 56 68 90 01 04 8d 45 e4 50 ff 15 90 01 04 8d 45 e4 89 45 d4 8d 45 cc 50 33 f6 68 3f 00 0f 00 8d 45 f0 50 c7 45 cc 18 00 00 00 89 75 d0 c7 45 d8 40 02 00 00 89 75 dc 89 75 e0 ff 15 90 01 04 85 c0 0f 8c cf 00 00 00 53 8b 1d 90 01 04 57 89 75 ec bf 44 64 6b 20 57 89 75 f4 be 00 02 00 00 56 6a 01 ff d3 85 c0 89 45 fc 0f 84 9b 00 00 00 57 bf 00 04 00 00 57 6a 01 ff d3 33 db 3b c3 89 45 f8 74 7e 56 53 ff 75 fc e8 90 01 04 83 c4 0c 8d 45 ec 50 56 ff 75 fc 53 53 8b 1d 90 01 04 eb 4d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}