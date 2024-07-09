
rule Trojan_Win32_KillMBR_ASAE_MTB{
	meta:
		description = "Trojan:Win32/KillMBR.ASAE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {50 6a 06 6a 00 6a 00 6a 00 68 ?? ?? 00 c0 ff d3 6a ff ff 15 } //1
		$a_01_1 = {52 45 47 20 41 44 44 20 68 6b 63 75 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 70 6f 6c 69 63 69 65 73 5c 73 79 73 74 65 6d 20 2f 76 20 44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 20 2f 74 20 72 65 67 5f 64 77 6f 72 64 20 2f 64 20 31 20 2f 66 } //1 REG ADD hkcu\Software\Microsoft\Windows\CurrentVersion\policies\system /v DisableTaskMgr /t reg_dword /d 1 /f
		$a_01_2 = {54 00 68 00 65 00 20 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 20 00 79 00 6f 00 75 00 20 00 6a 00 75 00 73 00 74 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 64 00 20 00 69 00 73 00 20 00 63 00 6f 00 6e 00 73 00 69 00 64 00 65 00 72 00 65 00 64 00 20 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 } //1 The software you just executed is considered malware
		$a_01_3 = {54 00 68 00 69 00 73 00 20 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 20 00 77 00 69 00 6c 00 6c 00 20 00 68 00 61 00 72 00 6d 00 20 00 79 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 61 00 6e 00 64 00 20 00 6d 00 61 00 6b 00 65 00 73 00 20 00 69 00 74 00 20 00 75 00 6e 00 75 00 73 00 61 00 62 00 6c 00 65 00 } //1 This malware will harm your computer and makes it unusable
		$a_01_4 = {54 00 68 00 69 00 73 00 20 00 69 00 73 00 20 00 74 00 68 00 65 00 20 00 6c 00 61 00 73 00 74 00 20 00 77 00 61 00 72 00 6e 00 69 00 6e 00 67 00 21 00 20 00 54 00 68 00 65 00 20 00 63 00 72 00 65 00 61 00 74 00 6f 00 72 00 20 00 69 00 73 00 20 00 6e 00 6f 00 74 00 20 00 72 00 65 00 73 00 70 00 6f 00 6e 00 73 00 69 00 62 00 6c 00 65 00 20 00 66 00 6f 00 72 00 20 00 61 00 6e 00 79 00 20 00 64 00 61 00 6d 00 61 00 67 00 65 00 20 00 6d 00 61 00 64 00 65 00 20 00 75 00 73 00 69 00 6e 00 67 00 20 00 74 00 68 00 69 00 73 00 20 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 21 00 20 00 53 00 74 00 69 00 6c 00 6c 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 20 00 69 00 74 00 3f 00 } //1 This is the last warning! The creator is not responsible for any damage made using this malware! Still execute it?
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}