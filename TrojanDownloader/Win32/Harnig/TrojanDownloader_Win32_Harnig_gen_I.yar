
rule TrojanDownloader_Win32_Harnig_gen_I{
	meta:
		description = "TrojanDownloader:Win32/Harnig.gen!I,SIGNATURE_TYPE_PEHSTR_EXT,19 00 15 00 1a 00 00 "
		
	strings :
		$a_00_0 = {46 2d 53 65 63 75 72 65 20 47 61 74 65 6b 65 65 70 65 72 20 48 61 6e 64 6c 65 72 20 53 74 61 72 74 65 72 } //1 F-Secure Gatekeeper Handler Starter
		$a_00_1 = {42 61 63 6b 57 65 62 20 50 6c 75 67 2d 69 6e 20 2d 20 34 34 37 36 38 32 32 } //1 BackWeb Plug-in - 4476822
		$a_00_2 = {53 68 61 72 65 64 41 63 63 65 73 73 } //1 SharedAccess
		$a_00_3 = {50 63 43 74 6c 43 6f 6d 2e 65 78 65 } //1 PcCtlCom.exe
		$a_00_4 = {4d 63 53 68 69 65 6c 64 2e 65 78 65 } //1 McShield.exe
		$a_01_5 = {4d 63 44 65 74 65 63 74 2e 65 78 65 } //1 McDetect.exe
		$a_00_6 = {4d 63 54 73 6b 73 68 64 2e 65 78 65 } //1 McTskshd.exe
		$a_00_7 = {4d 63 56 53 45 73 63 6e 2e 65 78 65 } //1 McVSEscn.exe
		$a_00_8 = {6d 63 76 73 73 68 6c 64 2e 65 78 65 } //1 mcvsshld.exe
		$a_01_9 = {4d 63 64 65 74 65 63 74 2e 65 78 65 } //1 Mcdetect.exe
		$a_00_10 = {46 53 41 56 33 32 2e 65 78 65 } //1 FSAV32.exe
		$a_00_11 = {56 73 73 65 72 76 2e 65 78 65 } //1 Vsserv.exe
		$a_00_12 = {46 53 4d 41 33 32 2e 45 58 45 } //1 FSMA32.EXE
		$a_00_13 = {46 53 4d 42 33 32 2e 45 58 45 } //1 FSMB32.EXE
		$a_00_14 = {46 53 52 57 2e 65 78 65 } //1 FSRW.exe
		$a_00_15 = {46 53 41 57 2e 65 78 65 } //1 FSAW.exe
		$a_00_16 = {4d 63 53 68 69 65 6c 64 } //1 McShield
		$a_00_17 = {50 63 43 74 6c 43 6f 6d } //1 PcCtlCom
		$a_00_18 = {6e 61 76 61 70 73 76 63 } //1 navapsvc
		$a_00_19 = {70 63 63 67 75 69 69 64 65 2e 70 68 70 } //1 pccguiide.php
		$a_00_20 = {6d 63 61 67 65 6e 74 2e 65 78 65 } //1 mcagent.exe
		$a_00_21 = {57 69 6e 45 78 65 63 } //1 WinExec
		$a_00_22 = {54 6d 50 66 77 2e 65 78 65 } //1 TmPfw.exe
		$a_02_23 = {68 74 74 70 3a 2f 2f 90 02 10 2e 62 69 7a 2f 70 72 6f 67 73 5f 74 72 61 66 66 2f 90 02 10 2f 90 02 10 2e 70 68 70 3f 65 78 70 3d 90 00 } //4
		$a_02_24 = {68 74 74 70 3a 2f 2f 90 02 10 2e 62 69 7a 2f 70 72 6f 67 73 5f 74 72 61 66 66 2f 90 02 10 2f 90 00 } //2
		$a_02_25 = {68 74 74 70 3a 2f 2f 90 02 10 2e 62 69 7a 2f 70 72 6f 67 73 5f 65 78 65 2f 90 02 10 2f 90 02 10 2e 70 68 70 3f 61 64 76 3d 90 00 } //4
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_01_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_00_19  & 1)*1+(#a_00_20  & 1)*1+(#a_00_21  & 1)*1+(#a_00_22  & 1)*1+(#a_02_23  & 1)*4+(#a_02_24  & 1)*2+(#a_02_25  & 1)*4) >=21
 
}