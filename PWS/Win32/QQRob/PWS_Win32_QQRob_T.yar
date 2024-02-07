
rule PWS_Win32_QQRob_T{
	meta:
		description = "PWS:Win32/QQRob.T,SIGNATURE_TYPE_PEHSTR_EXT,fffffff0 00 ffffffed 00 11 00 00 64 00 "
		
	strings :
		$a_00_0 = {51 51 52 6f 62 } //64 00  QQRob
		$a_00_1 = {77 70 61 2e 71 71 2e 63 6f 6d 2f 6d 73 67 72 64 3f 56 } //05 00  wpa.qq.com/msgrd?V
		$a_01_2 = {48 45 4c 4f } //05 00  HELO
		$a_00_3 = {41 55 54 48 20 4c 4f 47 49 4e } //05 00  AUTH LOGIN
		$a_00_4 = {4d 41 49 4c 20 46 52 4f 4d 3a } //05 00  MAIL FROM:
		$a_00_5 = {52 43 50 54 20 54 4f 3a } //05 00  RCPT TO:
		$a_00_6 = {3a 74 72 79 } //05 00  :try
		$a_00_7 = {69 66 20 65 78 69 73 74 20 22 } //05 00  if exist "
		$a_00_8 = {67 6f 74 6f 20 74 72 79 } //01 00  goto try
		$a_00_9 = {52 41 56 2e 45 58 45 } //01 00  RAV.EXE
		$a_00_10 = {52 41 56 4d 4f 4e 2e 45 58 45 } //01 00  RAVMON.EXE
		$a_00_11 = {52 41 56 54 49 4d 45 52 2e 45 58 45 } //01 00  RAVTIMER.EXE
		$a_00_12 = {4b 41 56 50 46 57 2e 45 58 45 } //01 00  KAVPFW.EXE
		$a_00_13 = {4b 56 46 57 2e 45 58 45 } //01 00  KVFW.EXE
		$a_00_14 = {4b 41 56 50 4c 55 53 2e 45 58 45 } //01 00  KAVPLUS.EXE
		$a_00_15 = {4b 57 41 54 43 48 55 49 2e 45 58 45 } //01 00  KWATCHUI.EXE
		$a_00_16 = {4b 50 4f 50 4d 4f 4e 2e 45 58 45 } //00 00  KPOPMON.EXE
	condition:
		any of ($a_*)
 
}