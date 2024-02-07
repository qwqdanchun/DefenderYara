
rule PWS_Win32_OnLineGames_BE{
	meta:
		description = "PWS:Win32/OnLineGames.BE,SIGNATURE_TYPE_PEHSTR,7b 00 7b 00 11 00 00 0a 00 "
		
	strings :
		$a_01_0 = {73 66 63 5f 6f 73 2e 64 6c 6c } //0a 00  sfc_os.dll
		$a_01_1 = {73 72 70 63 73 73 2e 64 6c 6c } //0a 00  srpcss.dll
		$a_01_2 = {67 64 69 70 72 6f 2e 64 6c 6c } //0a 00  gdipro.dll
		$a_01_3 = {73 76 63 68 6f 73 74 2e 65 78 65 } //0a 00  svchost.exe
		$a_01_4 = {63 73 72 73 73 2e 65 78 65 4d 75 74 65 78 } //0a 00  csrss.exeMutex
		$a_01_5 = {63 73 72 73 73 2e 65 78 65 45 76 65 6e 74 } //0a 00  csrss.exeEvent
		$a_01_6 = {25 73 25 30 32 78 2a 2e 64 6c 6c } //0a 00  %s%02x*.dll
		$a_01_7 = {53 65 72 76 69 63 65 44 6c 6c } //0a 00  ServiceDll
		$a_01_8 = {57 68 69 63 68 53 65 72 76 69 63 65 } //0a 00  WhichService
		$a_01_9 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 25 73 } //0a 00  SYSTEM\CurrentControlSet\Services\%s
		$a_01_10 = {32 31 32 2e 31 30 33 2e 31 31 2e 35 39 } //0a 00  212.103.11.59
		$a_01_11 = {5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //01 00  \drivers\etc\hosts
		$a_01_12 = {70 61 73 73 70 6f 72 74 2e 77 61 6e 6d 65 69 2e 63 6f 6d } //01 00  passport.wanmei.com
		$a_01_13 = {72 65 67 2e 31 36 33 2e 63 6f 6d } //01 00  reg.163.com
		$a_01_14 = {61 63 63 6f 75 6e 74 2e 7a 74 67 61 6d 65 2e 63 6f 6d } //01 00  account.ztgame.com
		$a_01_15 = {73 64 65 2e 67 61 6d 65 2e 73 6f 68 75 2e 63 6f 6d } //01 00  sde.game.sohu.com
		$a_01_16 = {61 3d 26 63 3d 25 73 26 65 3d 25 73 } //00 00  a=&c=%s&e=%s
	condition:
		any of ($a_*)
 
}