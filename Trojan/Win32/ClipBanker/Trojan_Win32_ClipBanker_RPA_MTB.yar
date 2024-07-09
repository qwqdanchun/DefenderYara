
rule Trojan_Win32_ClipBanker_RPA_MTB{
	meta:
		description = "Trojan:Win32/ClipBanker.RPA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_02_0 = {50 ff d6 68 ?? ?? ?? ?? a3 ?? ?? ?? ?? ff d0 68 ?? ?? ?? ?? 89 45 f8 ff 15 ?? ?? ?? ?? 68 ?? ?? ?? ?? 89 45 f0 ff 15 ?? ?? ?? ?? 68 ?? ?? ?? ?? 8b d8 ff 15 ?? ?? ?? ?? 68 ?? ?? ?? ?? 8b f8 ff 15 } //1
		$a_01_1 = {2f 00 43 00 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 46 00 20 00 2f 00 73 00 63 00 20 00 6d 00 69 00 6e 00 75 00 74 00 65 00 20 00 2f 00 6d 00 6f 00 20 00 31 00 20 00 2f 00 74 00 6e 00 } //1 /C /create /F /sc minute /mo 1 /tn
		$a_01_2 = {6d 00 73 00 74 00 73 00 63 00 61 00 2e 00 65 00 78 00 65 00 } //1 mstsca.exe
		$a_01_3 = {41 00 7a 00 75 00 72 00 65 00 2d 00 55 00 70 00 64 00 61 00 74 00 65 00 2d 00 54 00 61 00 73 00 6b 00 } //1 Azure-Update-Task
		$a_01_4 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 } //1 C:\Windows\System32\schtasks.exe
		$a_01_5 = {6b 00 65 00 72 00 6e 00 65 00 6c 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 } //1 kernel32.dll
	condition:
		((#a_02_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}