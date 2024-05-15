
rule Adware_Win32_Qjwmonkey_A_MSR{
	meta:
		description = "Adware:Win32/Qjwmonkey.A!MSR,SIGNATURE_TYPE_PEHSTR,08 00 08 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 6f 00 77 00 6e 00 4c 00 6f 00 61 00 64 00 46 00 72 00 61 00 6d 00 65 00 5f 00 73 00 70 00 6c 00 61 00 73 00 68 00 } //03 00  DownLoadFrame_splash
		$a_01_1 = {78 2e 39 33 6e 65 2e 63 6f 6d } //01 00  x.93ne.com
		$a_01_2 = {7a 00 68 00 75 00 64 00 6f 00 6e 00 67 00 66 00 61 00 6e 00 67 00 79 00 75 00 2e 00 65 00 78 00 65 00 } //05 00  zhudongfangyu.exe
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 64 00 6e 00 2e 00 7a 00 72 00 79 00 39 00 37 00 2e 00 63 00 6f 00 6d 00 2f 00 79 00 6f 00 75 00 78 00 69 00 } //01 00  http://cdn.zry97.com/youxi
		$a_01_4 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 6f 00 77 00 6e 00 2e 00 61 00 6e 00 68 00 75 00 69 00 72 00 79 00 2e 00 63 00 6f 00 6d 00 2f 00 } //03 00  http://down.anhuiry.com/
		$a_01_5 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 6c 00 2e 00 33 00 36 00 30 00 73 00 61 00 66 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 67 00 66 00 2f 00 33 00 36 00 30 00 69 00 6e 00 69 00 2e 00 63 00 61 00 62 00 } //00 00  http://dl.360safe.com/gf/360ini.cab
		$a_01_6 = {00 67 16 00 00 } //b5 89 
	condition:
		any of ($a_*)
 
}