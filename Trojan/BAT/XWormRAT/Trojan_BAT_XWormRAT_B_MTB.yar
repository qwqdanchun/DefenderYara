
rule Trojan_BAT_XWormRAT_B_MTB{
	meta:
		description = "Trojan:BAT/XWormRAT.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 69 00 6d 00 20 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 } //02 00  taskkill /im iexplore.exe
		$a_01_1 = {48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //02 00  HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr
		$a_01_2 = {48 00 4b 00 4c 00 4d 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 45 00 6e 00 61 00 62 00 6c 00 65 00 4c 00 55 00 41 00 } //02 00  HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA
		$a_01_3 = {48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //02 00  HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools
		$a_01_4 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 20 00 2f 00 73 00 20 00 2f 00 74 00 20 00 30 00 } //02 00  shutdown.exe /f /s /t 0
		$a_01_5 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 77 00 75 00 61 00 75 00 73 00 65 00 72 00 76 00 20 00 26 00 26 00 20 00 73 00 63 00 20 00 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 77 00 75 00 61 00 75 00 73 00 65 00 72 00 76 00 20 00 73 00 74 00 61 00 72 00 74 00 3d 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 } //00 00  cmd.exe /c net stop wuauserv && sc config wuauserv start= disabled
	condition:
		any of ($a_*)
 
}