
rule Backdoor_Win32_Zonebac_gen_B{
	meta:
		description = "Backdoor:Win32/Zonebac.gen!B,SIGNATURE_TYPE_PEHSTR,2d 00 2d 00 3d 00 00 02 00 "
		
	strings :
		$a_01_0 = {5c 61 62 63 31 32 33 2e 70 69 64 } //01 00  \abc123.pid
		$a_01_1 = {32 30 39 2e 31 36 37 2e 31 31 31 2e 31 31 30 } //01 00  209.167.111.110
		$a_01_2 = {32 32 32 2e 31 33 33 2e 33 2e 32 31 30 } //01 00  222.133.3.210
		$a_01_3 = {32 31 36 2e 39 35 2e 31 39 36 2e 32 32 } //01 00  216.95.196.22
		$a_01_4 = {69 65 78 70 6c 6f 72 65 2e 65 78 65 20 20 68 74 74 70 3a 2f 2f } //01 00  iexplore.exe  http://
		$a_01_5 = {49 6e 20 49 6e 73 74 61 6c 6c 4d 79 73 65 6c 66 20 28 4d 6f 76 69 6e 67 20 46 69 6c 65 29 6e } //01 00  In InstallMyself (Moving File)n
		$a_01_6 = {49 6e 73 74 61 6c 6c 69 6e 67 20 6f 76 65 72 3a } //01 00  Installing over:
		$a_01_7 = {75 70 64 61 74 65 2e 65 78 65 20 55 50 44 41 54 45 } //01 00  update.exe UPDATE
		$a_01_8 = {69 65 78 70 6c 6f 72 65 2e 65 78 65 20 20 25 73 2f 64 72 66 25 64 2e 68 74 6d 6c } //01 00  iexplore.exe  %s/drf%d.html
		$a_01_9 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_10 = {4c 65 78 6d 61 72 6b 5f 58 37 39 2d 35 35 } //01 00  Lexmark_X79-55
		$a_01_11 = {6c 73 61 73 73 73 2e 65 78 65 } //01 00  lsasss.exe
		$a_01_12 = {50 72 6f 63 65 73 73 33 32 46 69 72 73 74 } //01 00  Process32First
		$a_01_13 = {50 72 6f 63 65 73 73 33 32 4e 65 78 74 } //01 00  Process32Next
		$a_01_14 = {52 65 67 4f 70 65 6e 4b 65 79 45 78 41 } //01 00  RegOpenKeyExA
		$a_01_15 = {52 65 67 53 65 74 56 61 6c 75 65 45 78 41 } //01 00  RegSetValueExA
		$a_01_16 = {46 69 6e 64 4e 65 78 74 46 69 6c 65 41 } //01 00  FindNextFileA
		$a_01_17 = {46 69 6e 64 46 69 72 73 74 46 69 6c 65 41 } //01 00  FindFirstFileA
		$a_01_18 = {61 64 2d 77 61 74 63 68 2e 65 78 65 } //01 00  ad-watch.exe
		$a_01_19 = {69 73 61 66 65 2e 65 78 65 } //01 00  isafe.exe
		$a_01_20 = {63 61 2e 65 78 65 } //01 00  ca.exe
		$a_01_21 = {63 61 76 72 69 64 2e 65 78 65 } //01 00  cavrid.exe
		$a_01_22 = {61 76 70 2e 65 78 65 } //01 00  avp.exe
		$a_01_23 = {61 76 63 69 6d 61 6e 2e 65 78 65 } //01 00  avciman.exe
		$a_01_24 = {61 76 65 6e 67 69 6e 65 2e 65 78 65 } //01 00  avengine.exe
		$a_01_25 = {70 61 76 66 6e 73 76 72 2e 65 78 65 } //01 00  pavfnsvr.exe
		$a_01_26 = {70 61 76 73 72 76 35 31 2e 65 78 65 } //01 00  pavsrv51.exe
		$a_01_27 = {70 6e 6d 73 72 76 2e 65 78 65 } //01 00  pnmsrv.exe
		$a_01_28 = {70 73 6b 6d 73 73 76 63 2e 65 78 65 } //01 00  pskmssvc.exe
		$a_01_29 = {73 72 76 6c 6f 61 64 2e 65 78 65 } //01 00  srvload.exe
		$a_01_30 = {74 70 73 72 76 2e 65 78 65 } //01 00  tpsrv.exe
		$a_01_31 = {77 65 62 70 72 6f 78 79 2e 65 78 65 } //01 00  webproxy.exe
		$a_01_32 = {76 69 72 2e 65 78 65 } //01 00  vir.exe
		$a_01_33 = {73 77 64 6f 63 74 6f 72 2e 65 78 65 } //01 00  swdoctor.exe
		$a_01_34 = {6d 78 74 61 73 6b 2e 65 78 65 } //01 00  mxtask.exe
		$a_01_35 = {77 6d 69 70 72 76 73 65 2e 65 78 65 } //01 00  wmiprvse.exe
		$a_01_36 = {68 73 6f 63 6b 70 65 2e 65 78 65 } //01 00  hsockpe.exe
		$a_01_37 = {76 72 66 77 73 76 63 2e 65 78 65 } //01 00  vrfwsvc.exe
		$a_01_38 = {76 72 6d 6f 6e 6e 74 2e 65 78 65 } //01 00  vrmonnt.exe
		$a_01_39 = {66 69 72 65 77 61 6c 6c 6e 74 73 65 72 76 69 63 65 2e 65 78 65 } //01 00  firewallntservice.exe
		$a_01_40 = {73 70 79 73 77 65 65 70 65 72 75 69 2e 65 78 65 } //01 00  spysweeperui.exe
		$a_01_41 = {73 73 75 2e 65 78 65 } //01 00  ssu.exe
		$a_01_42 = {77 64 66 64 61 74 61 73 65 72 76 69 63 65 2e 65 78 65 } //01 00  wdfdataservice.exe
		$a_01_43 = {77 65 62 72 6f 6f 74 64 65 73 6b 74 6f 70 66 69 72 65 77 61 6c 6c 2e 65 78 65 } //01 00  webrootdesktopfirewall.exe
		$a_01_44 = {76 73 6d 6f 6e 2e 65 78 65 } //01 00  vsmon.exe
		$a_01_45 = {7a 6c 63 6c 69 65 6e 74 2e 65 78 65 } //01 00  zlclient.exe
		$a_01_46 = {6d 63 61 67 65 6e 74 2e 65 78 65 } //01 00  mcagent.exe
		$a_01_47 = {6d 63 64 65 74 65 63 74 2e 65 78 65 } //01 00  mcdetect.exe
		$a_01_48 = {6d 63 73 68 69 65 6c 64 2e 65 78 65 } //01 00  mcshield.exe
		$a_01_49 = {6d 63 74 73 6b 73 68 64 2e 65 78 65 } //01 00  mctskshd.exe
		$a_01_50 = {6d 63 76 73 65 73 63 6e 2e 65 78 65 } //01 00  mcvsescn.exe
		$a_01_51 = {6d 70 66 61 67 65 6e 74 2e 65 78 65 } //01 00  mpfagent.exe
		$a_01_52 = {6d 73 63 69 66 61 70 70 2e 65 78 65 } //01 00  mscifapp.exe
		$a_01_53 = {6d 73 6b 61 67 65 6e 74 2e 65 78 65 } //01 00  mskagent.exe
		$a_01_54 = {6f 61 73 63 6c 6e 74 2e 65 78 65 } //05 00  oasclnt.exe
		$a_01_55 = {2e 70 68 70 3f 53 54 41 47 45 3d 25 64 26 43 48 45 43 49 4e 5f 49 44 3d 25 64 } //01 00  .php?STAGE=%d&CHECIN_ID=%d
		$a_01_56 = {3a 20 25 32 2e 32 78 20 25 32 2e 32 78 6e } //01 00  : %2.2x %2.2xn
		$a_01_57 = {31 36 30 34 } //01 00  1604
		$a_01_58 = {31 36 30 35 } //01 00  1605
		$a_01_59 = {31 36 30 36 } //01 00  1606
		$a_01_60 = {31 36 30 37 } //00 00  1607
	condition:
		any of ($a_*)
 
}