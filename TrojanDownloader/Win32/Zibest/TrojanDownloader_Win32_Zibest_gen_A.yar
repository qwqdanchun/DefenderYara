
rule TrojanDownloader_Win32_Zibest_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Zibest.gen!A,SIGNATURE_TYPE_PEHSTR,28 00 23 00 1c 00 00 02 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 74 72 61 66 66 6e 65 77 2e 62 69 7a 2f 70 72 6f 67 73 2f } //02 00  http://traffnew.biz/progs/
		$a_01_1 = {68 74 74 70 3a 2f 2f 74 72 61 66 66 6e 65 77 2e 62 69 7a 2f 64 6c 2f } //02 00  http://traffnew.biz/dl/
		$a_01_2 = {3a 24 3a 2a 3a 31 3a 3a 3a 42 3a 49 3a 54 3a 5a 3a 60 3a 6a 3a 70 3a 76 3a } //02 00  :$:*:1:::B:I:T:Z:`:j:p:v:
		$a_01_3 = {3d 48 3d 52 3d 61 3d 6b 3d 78 3d } //02 00  =H=R=a=k=x=
		$a_01_4 = {3d 2f 3d 3b 3d 41 3d 67 3d 6f 3d } //02 00  =/=;=A=g=o=
		$a_01_5 = {64 6c 75 6e 69 71 31 2e 70 68 70 3f 65 78 70 3d 32 26 61 64 76 3d 61 64 76 36 38 32 26 63 6f 64 65 31 3d 48 4e 4e 45 26 63 6f 64 65 32 3d 35 31 32 31 } //02 00  dluniq1.php?exp=2&adv=adv682&code1=HNNE&code2=5121
		$a_01_6 = {46 2d 53 65 63 75 72 65 20 47 61 74 65 6b 65 65 70 65 72 20 48 61 6e 64 6c 65 72 20 53 74 61 72 74 65 72 } //02 00  F-Secure Gatekeeper Handler Starter
		$a_01_7 = {42 61 63 6b 57 65 62 20 50 6c 75 67 2d 69 6e 20 2d 20 34 34 37 36 38 32 32 } //02 00  BackWeb Plug-in - 4476822
		$a_01_8 = {64 6c 75 6e 69 71 31 2e 70 68 70 3f 65 78 70 3d 32 26 61 64 76 3d } //02 00  dluniq1.php?exp=2&adv=
		$a_01_9 = {74 72 61 66 66 6e 65 77 2e 62 69 7a } //02 00  traffnew.biz
		$a_01_10 = {70 63 63 67 75 69 64 65 2e 65 78 65 } //02 00  pccguide.exe
		$a_01_11 = {66 73 67 75 69 64 6c 6c 2e 65 78 65 } //02 00  fsguidll.exe
		$a_01_12 = {53 68 61 72 65 64 41 63 63 65 73 73 } //02 00  SharedAccess
		$a_01_13 = {66 73 67 6b 33 32 73 74 2e 65 78 65 } //02 00  fsgk32st.exe
		$a_01_14 = {73 65 63 75 72 65 33 32 2e 70 68 70 } //02 00  secure32.php
		$a_01_15 = {50 63 43 74 6c 43 6f 6d 2e 65 78 65 } //02 00  PcCtlCom.exe
		$a_01_16 = {5c 74 6f 6f 6c 62 61 72 2e 65 78 65 } //02 00  \toolbar.exe
		$a_01_17 = {5c 70 61 79 74 69 6d 65 2e 65 78 65 } //02 00  \paytime.exe
		$a_01_18 = {5c 74 6f 6f 6c 35 2e 65 78 65 } //02 00  \tool5.exe
		$a_01_19 = {66 73 64 66 77 64 2e 65 78 65 } //02 00  fsdfwd.exe
		$a_01_20 = {5c 74 6f 6f 6c 34 2e 65 78 65 } //02 00  \tool4.exe
		$a_01_21 = {66 73 67 6b 33 32 2e 65 78 65 } //02 00  fsgk32.exe
		$a_01_22 = {66 73 73 6d 33 32 2e 65 78 65 } //02 00  fssm32.exe
		$a_01_23 = {46 53 41 56 33 32 2e 65 78 65 } //0a 00  FSAV32.exe
		$a_01_24 = {8d 7d f8 83 c9 ff 33 c0 88 5d fc f2 ae f7 d1 2b f9 8d 95 b4 fb ff ff 8b f7 } //0a 00 
		$a_01_25 = {80 3e 22 75 0d 46 eb 0a 3c 20 7e 06 46 80 3e 20 7f fa 8a 06 84 c0 74 04 3c 20 7e e9 } //05 00 
		$a_01_26 = {c6 45 84 26 c6 45 85 63 c6 45 86 6f c6 45 87 64 c6 45 88 65 c6 45 89 32 c6 45 8a 3d 88 5d 8b } //05 00 
		$a_01_27 = {c6 85 64 fd ff ff 53 c6 85 65 fd ff ff 68 c6 85 66 fd ff ff 61 c6 85 67 fd ff ff 72 c6 85 68 fd ff ff 65 } //00 00 
	condition:
		any of ($a_*)
 
}