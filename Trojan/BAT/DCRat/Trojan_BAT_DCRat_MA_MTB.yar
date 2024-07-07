
rule Trojan_BAT_DCRat_MA_MTB{
	meta:
		description = "Trojan:BAT/DCRat.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_03_0 = {09 00 04 61 28 90 01 01 0d 00 06 73 90 01 01 01 00 06 28 90 01 01 01 00 06 90 00 } //1
		$a_01_1 = {56 00 69 00 73 00 75 00 61 00 6c 00 53 00 74 00 75 00 64 00 69 00 6f 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 2e 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 2e 00 64 00 6c 00 6c 00 } //10 VisualStudio.Shell.Framework.dll
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*10) >=11
 
}
rule Trojan_BAT_DCRat_MA_MTB_2{
	meta:
		description = "Trojan:BAT/DCRat.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 06 00 00 "
		
	strings :
		$a_01_0 = {46 76 6c 30 63 41 66 62 68 6c 32 5a 39 36 6a 71 71 74 43 56 67 69 52 34 4f 4b 6b 67 72 32 47 74 4b } //20 Fvl0cAfbhl2Z96jqqtCVgiR4OKkgr2GtK
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 } //1 Software\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_3 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 20 00 2f 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 2f 00 74 00 6e 00 } //1 schtasks.exe /delete /tn
		$a_01_4 = {44 00 43 00 52 00 61 00 74 00 2e 00 43 00 6f 00 64 00 65 00 } //1 DCRat.Code
		$a_01_5 = {57 ff b7 3f 09 1e 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 22 01 00 00 0a 01 00 00 52 05 00 00 7a 06 00 00 43 00 00 00 35 } //1
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=25
 
}