
rule Ransom_Win32_Genavm_ARC_MSR{
	meta:
		description = "Ransom:Win32/Genavm.ARC!MSR,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0a 00 00 "
		
	strings :
		$a_01_0 = {52 61 6e 73 6f 6d 77 61 72 65 } //1 Ransomware
		$a_01_1 = {53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 46 00 69 00 6c 00 65 00 2e 00 65 00 78 00 65 00 } //1 Startup\StartupFile.exe
		$a_01_2 = {53 00 74 00 6f 00 70 00 41 00 6e 00 74 00 69 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //1 StopAntiService
		$a_01_3 = {4b 00 69 00 6c 00 6c 00 41 00 6e 00 74 00 69 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //1 KillAntiService
		$a_01_4 = {46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 4e 00 6f 00 74 00 69 00 66 00 79 00 } //1 FirewallDisableNotify
		$a_01_5 = {41 00 6e 00 74 00 69 00 56 00 69 00 72 00 75 00 73 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 4e 00 6f 00 74 00 69 00 66 00 79 00 } //1 AntiVirusDisableNotify
		$a_01_6 = {41 00 6e 00 74 00 69 00 56 00 4d 00 } //1 AntiVM
		$a_01_7 = {53 00 74 00 65 00 61 00 6c 00 46 00 69 00 6c 00 65 00 49 00 6e 00 66 00 6f 00 } //1 StealFileInfo
		$a_01_8 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 34 00 39 00 2e 00 32 00 30 00 2e 00 34 00 2e 00 36 00 39 00 3a 00 32 00 31 00 } //1 http://149.20.4.69:21
		$a_01_9 = {71 00 77 00 65 00 72 00 74 00 79 00 75 00 69 00 6f 00 70 00 61 00 73 00 64 00 66 00 67 00 68 00 6a 00 6b 00 6c 00 31 00 32 00 33 00 34 00 35 00 36 00 37 00 38 00 39 00 30 00 } //1 qwertyuiopasdfghjkl1234567890
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=9
 
}