
rule Trojan_Win32_Gandcrab_RB_MSR{
	meta:
		description = "Trojan:Win32/Gandcrab.RB!MSR,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 15 00 00 "
		
	strings :
		$a_00_0 = {33 00 36 00 30 00 4e 00 65 00 74 00 42 00 61 00 73 00 65 00 2e 00 64 00 6c 00 6c 00 } //65486 360NetBase.dll
		$a_00_1 = {33 00 36 00 30 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 6f 00 72 00 5f 00 50 00 72 00 69 00 76 00 61 00 74 00 65 00 4b 00 65 00 79 00 2e 00 69 00 6e 00 69 00 } //65486 360Decryptor_PrivateKey.ini
		$a_00_2 = {33 00 36 00 30 00 2e 00 63 00 6e 00 20 00 49 00 6e 00 63 00 } //65486 360.cn Inc
		$a_00_3 = {54 00 65 00 73 00 6c 00 61 00 43 00 72 00 79 00 70 00 74 00 44 00 65 00 63 00 6f 00 64 00 65 00 72 00 2e 00 64 00 6c 00 6c 00 } //65486 TeslaCryptDecoder.dll
		$a_00_4 = {52 65 6c 65 61 73 65 5c 54 65 73 6c 61 43 72 79 70 74 44 65 63 6f 64 65 72 2e 70 64 62 } //65486 Release\TeslaCryptDecoder.pdb
		$a_01_5 = {47 00 44 00 43 00 42 00 2d 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 2e 00 74 00 78 00 74 00 } //20 GDCB-DECRYPT.txt
		$a_01_6 = {6e 6f 6d 6f 72 65 72 61 6e 73 6f 6d } //20 nomoreransom
		$a_01_7 = {41 00 56 00 50 00 2e 00 45 00 58 00 45 00 } //1 AVP.EXE
		$a_01_8 = {65 00 6b 00 72 00 6e 00 2e 00 65 00 78 00 65 00 } //1 ekrn.exe
		$a_01_9 = {61 00 76 00 67 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //1 avgnt.exe
		$a_01_10 = {61 00 73 00 68 00 44 00 69 00 73 00 70 00 2e 00 65 00 78 00 65 00 } //1 ashDisp.exe
		$a_01_11 = {4e 00 6f 00 72 00 74 00 6f 00 6e 00 41 00 6e 00 74 00 69 00 42 00 6f 00 74 00 2e 00 65 00 78 00 65 00 } //1 NortonAntiBot.exe
		$a_01_12 = {4d 00 63 00 73 00 68 00 69 00 65 00 6c 00 64 00 2e 00 65 00 78 00 65 00 } //1 Mcshield.exe
		$a_01_13 = {61 00 76 00 65 00 6e 00 67 00 69 00 6e 00 65 00 2e 00 65 00 78 00 65 00 } //1 avengine.exe
		$a_01_14 = {63 00 6d 00 64 00 61 00 67 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //1 cmdagent.exe
		$a_01_15 = {73 00 6d 00 63 00 2e 00 65 00 78 00 65 00 } //1 smc.exe
		$a_01_16 = {70 00 65 00 72 00 73 00 66 00 77 00 2e 00 65 00 78 00 65 00 } //1 persfw.exe
		$a_01_17 = {70 00 63 00 63 00 70 00 66 00 77 00 2e 00 65 00 78 00 65 00 } //1 pccpfw.exe
		$a_01_18 = {66 00 73 00 67 00 75 00 69 00 65 00 78 00 65 00 2e 00 65 00 78 00 65 00 } //1 fsguiexe.exe
		$a_01_19 = {63 00 66 00 70 00 2e 00 65 00 78 00 65 00 } //1 cfp.exe
		$a_01_20 = {6d 00 73 00 6d 00 70 00 65 00 6e 00 67 00 2e 00 65 00 78 00 65 00 } //1 msmpeng.exe
	condition:
		((#a_00_0  & 1)*65486+(#a_00_1  & 1)*65486+(#a_00_2  & 1)*65486+(#a_00_3  & 1)*65486+(#a_00_4  & 1)*65486+(#a_01_5  & 1)*20+(#a_01_6  & 1)*20+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1) >=25
 
}