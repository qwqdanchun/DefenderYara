
rule Trojan_Win32_MpTamperSrvDisableAV_I{
	meta:
		description = "Trojan:Win32/MpTamperSrvDisableAV.I,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 00 74 00 6f 00 70 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 57 00 69 00 6e 00 44 00 65 00 66 00 65 00 6e 00 64 00 } //01 00  Stop-Service WinDefend
		$a_00_1 = {53 00 74 00 6f 00 70 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 2d 00 4e 00 61 00 6d 00 65 00 20 00 57 00 69 00 6e 00 44 00 65 00 66 00 65 00 6e 00 64 00 } //01 00  Stop-Service -Name WinDefend
		$a_00_2 = {53 00 74 00 6f 00 70 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00  Stop-Service Microsoft Defender Antivirus Service
		$a_00_3 = {53 00 74 00 6f 00 70 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 2d 00 44 00 69 00 73 00 70 00 6c 00 61 00 79 00 4e 00 61 00 6d 00 65 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00  Stop-Service -DisplayName Microsoft Defender Antivirus Service
		$a_00_4 = {47 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 57 00 69 00 6e 00 44 00 65 00 66 00 65 00 6e 00 64 00 20 00 7c 00 20 00 53 00 74 00 6f 00 70 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00  Get-Service WinDefend | Stop-Service
		$a_00_5 = {47 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 2d 00 4e 00 61 00 6d 00 65 00 20 00 57 00 69 00 6e 00 44 00 65 00 66 00 65 00 6e 00 64 00 20 00 7c 00 20 00 53 00 74 00 6f 00 70 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00  Get-Service -Name WinDefend | Stop-Service
		$a_00_6 = {47 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 7c 00 20 00 53 00 74 00 6f 00 70 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00  Get-Service Microsoft Defender Antivirus Service | Stop-Service
		$a_00_7 = {47 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 2d 00 44 00 69 00 73 00 70 00 6c 00 61 00 79 00 4e 00 61 00 6d 00 65 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 7c 00 20 00 53 00 74 00 6f 00 70 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //00 00  Get-Service -DisplayName Microsoft Defender Antivirus Service | Stop-Service
	condition:
		any of ($a_*)
 
}