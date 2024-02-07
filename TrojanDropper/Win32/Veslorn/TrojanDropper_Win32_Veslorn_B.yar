
rule TrojanDropper_Win32_Veslorn_B{
	meta:
		description = "TrojanDropper:Win32/Veslorn.B,SIGNATURE_TYPE_PEHSTR_EXT,5d 02 5d 02 29 00 00 64 00 "
		
	strings :
		$a_03_0 = {50 68 c8 00 00 00 8b 85 90 01 01 ff ff ff 8b 4d 90 01 01 8d 04 81 50 ff 75 ac e8 90 01 02 ff ff 89 85 90 01 01 ff ff ff 90 00 } //64 00 
		$a_00_1 = {48 00 4b 00 4c 00 4d 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 49 00 6d 00 61 00 67 00 65 00 20 00 46 00 69 00 6c 00 65 00 20 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 20 00 4f 00 70 00 74 00 69 00 6f 00 6e 00 73 00 } //64 00  HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options
		$a_00_2 = {57 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 } //64 00  Wscript.Shell
		$a_00_3 = {69 00 66 00 20 00 65 00 78 00 69 00 73 00 74 00 } //64 00  if exist
		$a_00_4 = {4f 70 65 6e 50 72 6f 63 65 73 73 } //64 00  OpenProcess
		$a_00_5 = {45 6e 75 6d 50 72 6f 63 65 73 73 4d 6f 64 75 6c 65 73 } //01 00  EnumProcessModules
		$a_00_6 = {33 00 36 00 30 00 73 00 61 00 66 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  360safe.exe
		$a_00_7 = {33 00 36 00 30 00 74 00 72 00 61 00 79 00 2e 00 65 00 78 00 65 00 } //01 00  360tray.exe
		$a_00_8 = {55 00 70 00 64 00 61 00 74 00 65 00 72 00 55 00 49 00 2e 00 65 00 78 00 65 00 } //01 00  UpdaterUI.exe
		$a_00_9 = {61 00 76 00 70 00 2e 00 65 00 78 00 65 00 } //01 00  avp.exe
		$a_00_10 = {4d 00 63 00 73 00 68 00 69 00 65 00 6c 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  Mcshield.exe
		$a_00_11 = {56 00 73 00 54 00 73 00 6b 00 4d 00 67 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  VsTskMgr.exe
		$a_00_12 = {6e 00 61 00 50 00 72 00 64 00 4d 00 67 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  naPrdMgr.exe
		$a_00_13 = {54 00 42 00 4d 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  TBMon.exe
		$a_00_14 = {73 00 63 00 61 00 6e 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //01 00  scan32.exe
		$a_00_15 = {43 00 43 00 65 00 6e 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  CCenter.exe
		$a_00_16 = {52 00 61 00 76 00 54 00 61 00 73 00 6b 00 2e 00 65 00 78 00 65 00 } //01 00  RavTask.exe
		$a_00_17 = {52 00 61 00 76 00 2e 00 65 00 78 00 65 00 } //01 00  Rav.exe
		$a_00_18 = {52 00 61 00 76 00 4d 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  RavMon.exe
		$a_00_19 = {52 00 61 00 76 00 6d 00 6f 00 6e 00 44 00 2e 00 65 00 78 00 65 00 } //01 00  RavmonD.exe
		$a_00_20 = {52 00 61 00 76 00 53 00 74 00 75 00 62 00 2e 00 65 00 78 00 65 00 } //01 00  RavStub.exe
		$a_00_21 = {6b 00 76 00 73 00 72 00 76 00 78 00 70 00 2e 00 65 00 78 00 65 00 } //01 00  kvsrvxp.exe
		$a_00_22 = {4b 00 52 00 65 00 67 00 45 00 78 00 2e 00 65 00 78 00 65 00 } //01 00  KRegEx.exe
		$a_00_23 = {6b 00 61 00 76 00 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 } //01 00  kavsvc.exe
		$a_00_24 = {55 00 49 00 48 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  UIHost.exe
		$a_00_25 = {54 00 72 00 6f 00 6a 00 44 00 69 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  TrojDie.exe
		$a_00_26 = {46 00 72 00 6f 00 67 00 41 00 67 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  FrogAgent.exe
		$a_00_27 = {6b 00 61 00 76 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //01 00  kav32.exe
		$a_00_28 = {6b 00 61 00 76 00 73 00 74 00 61 00 72 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  kavstart.exe
		$a_00_29 = {6b 00 61 00 74 00 6d 00 61 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  katmain.exe
		$a_00_30 = {6b 00 70 00 66 00 77 00 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 } //01 00  kpfwsvc.exe
		$a_00_31 = {6b 00 70 00 66 00 77 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //01 00  kpfw32.exe
		$a_00_32 = {72 00 66 00 77 00 6d 00 61 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  rfwmain.exe
		$a_00_33 = {72 00 66 00 77 00 70 00 72 00 6f 00 78 00 79 00 2e 00 65 00 78 00 65 00 } //01 00  rfwproxy.exe
		$a_00_34 = {72 00 66 00 77 00 73 00 72 00 76 00 2e 00 65 00 78 00 65 00 } //01 00  rfwsrv.exe
		$a_00_35 = {54 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  Taskmgr.exe
		$a_00_36 = {52 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  Regedit.exe
		$a_00_37 = {4d 00 73 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 65 00 78 00 65 00 } //01 00  Msconfig.exe
		$a_00_38 = {69 00 63 00 65 00 73 00 77 00 6f 00 72 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  icesword.exe
		$a_00_39 = {4b 00 57 00 61 00 74 00 63 00 68 00 2e 00 65 00 78 00 65 00 } //01 00  KWatch.exe
		$a_00_40 = {53 00 6e 00 69 00 70 00 65 00 53 00 77 00 6f 00 72 00 64 00 2e 00 65 00 78 00 65 00 } //00 00  SnipeSword.exe
	condition:
		any of ($a_*)
 
}