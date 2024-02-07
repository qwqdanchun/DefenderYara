
rule Adware_Win32_Cjishu_A{
	meta:
		description = "Adware:Win32/Cjishu.A,SIGNATURE_TYPE_PEHSTR,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6c 00 68 00 2e 00 63 00 6a 00 69 00 73 00 68 00 75 00 2e 00 63 00 6f 00 6d 00 2f 00 69 00 6e 00 64 00 65 00 78 00 2e 00 70 00 68 00 70 00 } //01 00  http://lh.cjishu.com/index.php
		$a_01_1 = {43 00 3a 00 5c 00 4d 00 79 00 4c 00 6f 00 67 00 5c 00 53 00 76 00 72 00 44 00 65 00 62 00 75 00 67 00 4c 00 6f 00 67 00 2e 00 6c 00 6f 00 67 00 } //01 00  C:\MyLog\SvrDebugLog.log
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 61 00 6c 00 65 00 6e 00 64 00 61 00 72 00 2e 00 63 00 6a 00 69 00 73 00 68 00 75 00 2e 00 63 00 6f 00 6d 00 2f 00 69 00 6e 00 64 00 65 00 78 00 2e 00 70 00 68 00 70 00 } //01 00  http://calendar.cjishu.com/index.php
		$a_01_3 = {45 00 6e 00 63 00 72 00 79 00 44 00 61 00 74 00 61 00 53 00 76 00 63 00 2e 00 65 00 78 00 65 00 } //00 00  EncryDataSvc.exe
	condition:
		any of ($a_*)
 
}