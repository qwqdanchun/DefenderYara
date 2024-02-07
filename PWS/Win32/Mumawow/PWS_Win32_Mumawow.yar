
rule PWS_Win32_Mumawow{
	meta:
		description = "PWS:Win32/Mumawow,SIGNATURE_TYPE_PEHSTR,10 00 0f 00 14 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 65 78 74 3a 25 73 } //01 00  Text:%s
		$a_01_1 = {50 61 73 73 3a 25 73 } //01 00  Pass:%s
		$a_01_2 = {55 73 65 72 3a 25 73 } //01 00  User:%s
		$a_01_3 = {77 6f 77 2e 65 78 65 } //01 00  wow.exe
		$a_01_4 = {46 69 6e 64 57 6f 77 50 61 73 73 21 } //01 00  FindWowPass!
		$a_01_5 = {45 72 66 6f 6c 67 21 21 } //01 00  Erfolg!!
		$a_01_6 = {57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  Windows\CurrentVersion\Run
		$a_01_7 = {61 74 20 25 64 3a 25 64 20 63 6d 64 20 2f 63 20 63 6f 70 79 20 22 25 73 22 20 22 25 73 22 } //01 00  at %d:%d cmd /c copy "%s" "%s"
		$a_01_8 = {6e 65 74 20 73 74 61 72 74 20 53 63 68 65 64 75 6c 65 } //01 00  net start Schedule
		$a_01_9 = {73 63 20 63 6f 6e 66 69 67 20 53 63 68 65 64 75 6c 65 20 73 74 61 72 74 3d 20 61 75 74 6f } //02 00  sc config Schedule start= auto
		$a_01_10 = {25 73 3f 4d 61 69 6c 42 6f 64 79 3d 25 73 } //01 00  %s?MailBody=%s
		$a_01_11 = {45 78 70 6c 6f 72 65 72 5f 53 65 72 76 65 72 } //02 00  Explorer_Server
		$a_01_12 = {6d 75 74 65 78 3a 30 } //01 00  mutex:0
		$a_01_13 = {73 76 63 68 70 73 74 2e 65 78 65 } //01 00  svchpst.exe
		$a_01_14 = {57 6f 72 6c 64 20 6f 66 20 57 61 72 63 72 61 66 74 } //01 00  World of Warcraft
		$a_01_15 = {47 78 57 69 6e 64 6f 77 43 6c 61 73 73 44 33 64 } //01 00  GxWindowClassD3d
		$a_01_16 = {72 65 61 6c 6d 6c 69 73 74 2e 77 74 66 } //02 00  realmlist.wtf
		$a_01_17 = {2e 63 6f 6d 2e 63 6e 2f 79 75 2f 73 65 6e 64 6d 61 69 6c 2e } //01 00  .com.cn/yu/sendmail.
		$a_01_18 = {25 73 25 64 2e 65 78 65 } //01 00  %s%d.exe
		$a_01_19 = {25 73 25 64 2e 64 6c 6c } //00 00  %s%d.dll
	condition:
		any of ($a_*)
 
}