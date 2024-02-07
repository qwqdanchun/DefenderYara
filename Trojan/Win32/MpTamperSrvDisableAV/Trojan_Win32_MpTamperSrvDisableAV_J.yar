
rule Trojan_Win32_MpTamperSrvDisableAV_J{
	meta:
		description = "Trojan:Win32/MpTamperSrvDisableAV.J,SIGNATURE_TYPE_CMDHSTR_EXT,0c 00 0c 00 05 00 00 0a 00 "
		
	strings :
		$a_00_0 = {57 00 69 00 6e 00 44 00 65 00 66 00 65 00 6e 00 64 00 } //0a 00  WinDefend
		$a_00_1 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00  Microsoft Defender Antivirus Service
		$a_00_2 = {53 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00  Set-Service
		$a_00_3 = {2d 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 54 00 79 00 70 00 65 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 } //01 00  -StartupType Disabled
		$a_00_4 = {2d 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 54 00 79 00 70 00 65 00 20 00 4d 00 61 00 6e 00 75 00 61 00 6c 00 } //00 00  -StartupType Manual
	condition:
		any of ($a_*)
 
}