
rule Trojan_Win32_Agent_OL{
	meta:
		description = "Trojan:Win32/Agent.OL,SIGNATURE_TYPE_PEHSTR_EXT,ffffff90 00 ffffff8e 00 0a 00 00 "
		
	strings :
		$a_02_0 = {55 8b ec b9 05 00 00 00 6a 00 6a 00 49 75 f9 b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 33 c0 55 68 ?? ?? ?? ?? 64 ff 30 64 89 20 8d 45 ec e8 ?? ?? ?? ?? 8d 45 ec ba ?? ?? ?? ?? e8 ?? ?? ?? ?? 8b 55 ec b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8d 45 e8 e8 ?? ?? ?? ?? 8d 45 e8 ba ?? ?? ?? ?? e8 ?? ?? ?? ?? 8b 55 e8 b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8d 45 e4 e8 ?? ?? ?? ?? 8d 45 e4 ba ?? ?? ?? ?? e8 ?? ?? ?? ?? 8b 45 e4 e8 ?? ?? ?? ?? 84 c0 74 25 6a 00 8d 45 e0 } //100
		$a_00_1 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //20 URLDownloadToFileA
		$a_00_2 = {57 69 6e 45 78 65 63 } //20 WinExec
		$a_00_3 = {5c 72 75 64 6c 6c 33 32 2e 65 78 65 } //2 \rudll32.exe
		$a_00_4 = {5c 6e 6f 74 70 61 64 2e 65 78 65 } //2 \notpad.exe
		$a_00_5 = {5c 61 73 68 4d 61 69 6c 73 2e 65 78 65 } //2 \ashMails.exe
		$a_00_6 = {5c 61 73 68 53 65 72 76 73 2e 65 78 65 } //2 \ashServs.exe
		$a_00_7 = {5c 78 30 30 30 2e 65 78 65 } //2 \x000.exe
		$a_00_8 = {5c 61 67 65 6e 74 65 73 66 69 72 65 77 61 6c 6c 2e 65 78 65 } //2 \agentesfirewall.exe
		$a_00_9 = {5c 70 6c 75 67 69 6e 2e 65 78 65 } //2 \plugin.exe
	condition:
		((#a_02_0  & 1)*100+(#a_00_1  & 1)*20+(#a_00_2  & 1)*20+(#a_00_3  & 1)*2+(#a_00_4  & 1)*2+(#a_00_5  & 1)*2+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*2+(#a_00_9  & 1)*2) >=142
 
}