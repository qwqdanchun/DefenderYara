
rule Trojan_Win32_Qbot_SBR_MSR{
	meta:
		description = "Trojan:Win32/Qbot.SBR!MSR,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {67 00 6f 00 2d 00 69 00 74 00 6d 00 72 00 69 00 75 00 33 00 39 00 30 00 34 00 37 00 76 00 79 00 35 00 74 00 32 00 38 00 37 00 34 00 79 00 74 00 39 00 } //01 00  go-itmriu39047vy5t2874yt9
		$a_01_1 = {50 4d 65 71 78 52 42 66 68 44 } //01 00  PMeqxRBfhD
		$a_01_2 = {44 75 70 6c 69 63 61 74 65 49 63 6f 6e } //01 00  DuplicateIcon
		$a_01_3 = {49 6e 74 65 72 66 61 63 45 5c 7b 62 31 39 36 62 32 38 37 2d 62 61 62 34 2d 31 30 31 61 2d 62 36 39 63 2d 30 30 61 61 30 30 33 34 31 64 30 37 } //00 00  InterfacE\{b196b287-bab4-101a-b69c-00aa00341d07
		$a_00_4 = {78 f7 00 00 05 } //00 05 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Qbot_SBR_MSR_2{
	meta:
		description = "Trojan:Win32/Qbot.SBR!MSR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 00 6f 00 6f 00 6b 00 20 00 61 00 74 00 20 00 74 00 68 00 65 00 20 00 69 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 20 00 77 00 69 00 6e 00 64 00 6f 00 77 00 } //01 00  Look at the information window
		$a_01_1 = {72 00 65 00 62 00 6f 00 6f 00 74 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 61 00 6e 00 64 00 20 00 72 00 65 00 73 00 74 00 61 00 72 00 74 00 } //01 00  reboot Windows and restart
		$a_01_2 = {67 00 6f 00 2d 00 69 00 74 00 6d 00 72 00 69 00 75 00 33 00 39 00 30 00 34 00 37 00 76 00 79 00 35 00 74 00 32 00 38 00 37 00 34 00 79 00 74 00 39 00 } //01 00  go-itmriu39047vy5t2874yt9
		$a_01_3 = {65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 66 00 69 00 6c 00 65 00 } //01 00  encrypted file
		$a_01_4 = {45 00 6e 00 74 00 65 00 72 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //00 00  Enter password
	condition:
		any of ($a_*)
 
}