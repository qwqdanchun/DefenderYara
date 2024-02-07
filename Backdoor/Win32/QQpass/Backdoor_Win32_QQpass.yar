
rule Backdoor_Win32_QQpass{
	meta:
		description = "Backdoor:Win32/QQpass,SIGNATURE_TYPE_PEHSTR,0b 00 08 00 10 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 00 53 00 74 00 61 00 72 00 74 00 5d 00 } //01 00  [Start]
		$a_01_1 = {5b 00 55 00 72 00 6c 00 5d 00 } //01 00  [Url]
		$a_01_2 = {5b 00 4b 00 69 00 6c 00 6c 00 5d 00 } //02 00  [Kill]
		$a_01_3 = {70 00 6c 00 6d 00 6d 00 7c 00 73 00 65 00 78 00 7c 00 62 00 65 00 61 00 75 00 74 00 79 00 7c 00 66 00 72 00 65 00 65 00 7c 00 4d 00 79 00 20 00 50 00 69 00 63 00 74 00 75 00 72 00 65 00 73 00 7c 00 67 00 69 00 72 00 6c 00 73 00 7c 00 70 00 68 00 6f 00 74 00 6f 00 73 00 7c 00 } //01 00  plmm|sex|beauty|free|My Pictures|girls|photos|
		$a_01_4 = {32 00 75 00 5a 00 62 00 5c 00 31 00 7e 00 2d 00 5b 00 74 00 28 00 7e 00 68 00 2a 00 3a 00 35 00 49 00 55 00 32 00 2e 00 40 00 23 00 46 00 2c 00 4c 00 7e 00 7e 00 7c 00 7b 00 7e 00 2b 00 29 00 5c 00 76 00 65 00 6d 00 38 00 50 00 4c 00 2b 00 } //01 00  2uZb\1~-[t(~h*:5IU2.@#F,L~~|{~+)\vem8PL+
		$a_01_5 = {64 00 5f 00 34 00 34 00 31 00 35 00 34 00 2e 00 6e 00 6c 00 73 00 } //01 00  d_44154.nls
		$a_01_6 = {4d 00 31 00 62 00 26 00 52 00 40 00 46 00 54 00 33 00 7a 00 7a 00 67 00 6e 00 6a 00 70 00 25 00 3f 00 38 00 6a 00 44 00 } //01 00  M1b&R@FT3zzgnjp%?8jD
		$a_01_7 = {57 00 76 00 5a 00 66 00 4c 00 61 00 46 00 25 00 45 00 3d 00 6d 00 48 00 7e 00 4b 00 2b 00 3a 00 32 00 50 00 38 00 34 00 61 00 41 00 54 00 } //01 00  WvZfLaF%E=mH~K+:2P84aAT
		$a_01_8 = {4b 00 69 00 6c 00 6c 00 4d 00 65 00 2e 00 62 00 61 00 74 00 } //01 00  KillMe.bat
		$a_01_9 = {23 00 33 00 32 00 37 00 37 00 30 00 } //01 00  #32770
		$a_01_10 = {54 00 45 00 4e 00 43 00 45 00 4e 00 54 00 5c 00 50 00 4c 00 41 00 54 00 46 00 4f 00 52 00 4d 00 5f 00 54 00 59 00 50 00 45 00 5f 00 4c 00 49 00 53 00 54 00 5c 00 } //01 00  TENCENT\PLATFORM_TYPE_LIST\
		$a_01_11 = {77 00 6d 00 69 00 6d 00 67 00 72 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  wmimgrnt.exe
		$a_01_12 = {63 00 3a 00 5c 00 51 00 51 00 4d 00 61 00 69 00 6c 00 2e 00 69 00 6e 00 69 00 } //01 00  c:\QQMail.ini
		$a_01_13 = {54 6f 70 46 6f 78 } //01 00  TopFox
		$a_01_14 = {48 00 69 00 64 00 65 00 46 00 69 00 6c 00 65 00 45 00 78 00 74 00 } //01 00  HideFileExt
		$a_01_15 = {72 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 6e 00 6f 00 74 00 65 00 70 00 61 00 64 00 2e 00 74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 63 00 74 00 66 00 6d 00 6f 00 6e 00 2e 00 75 00 73 00 65 00 72 00 69 00 6e 00 69 00 74 00 2e 00 } //00 00  regedit.notepad.taskmgr.ctfmon.userinit.
	condition:
		any of ($a_*)
 
}