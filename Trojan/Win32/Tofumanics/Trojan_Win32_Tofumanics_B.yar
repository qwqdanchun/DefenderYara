
rule Trojan_Win32_Tofumanics_B{
	meta:
		description = "Trojan:Win32/Tofumanics.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 6f 66 74 77 61 72 65 5c 57 65 62 4d 6f 6e 65 79 5c 50 61 74 68 } //01 00  Software\WebMoney\Path
		$a_00_1 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 4e 65 74 77 6f 72 6b 5c 7b 34 44 33 36 45 39 37 32 2d 45 33 32 35 2d 31 31 43 45 2d 42 46 43 31 2d 30 38 30 30 32 42 45 31 30 33 31 38 7d } //01 00  SYSTEM\CurrentControlSet\Control\Network\{4D36E972-E325-11CE-BFC1-08002BE10318}
		$a_00_2 = {72 65 67 20 61 64 64 20 22 68 6b 65 79 5f 6c 6f 63 61 6c 5f 6d 61 63 68 69 6e 65 5c 73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 20 6e 74 5c 63 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 5c 77 69 6e 6c 6f 67 6f 6e } //01 00  reg add "hkey_local_machine\software\microsoft\windows nt\currentversion\winlogon
		$a_02_3 = {6e 65 74 73 68 20 69 6e 74 65 72 66 61 63 65 20 69 70 20 61 64 64 20 64 6e 73 20 6e 61 6d 65 3d 22 90 02 10 22 20 61 64 64 72 3d 90 02 10 69 6e 64 65 78 3d 32 90 02 10 65 72 61 73 65 20 22 90 00 } //01 00 
		$a_02_4 = {67 6f 74 6f 20 30 90 02 10 65 72 61 73 65 20 22 90 02 10 72 65 61 64 6d 65 2e 74 78 74 22 90 00 } //01 00 
		$a_02_5 = {6c 6f 74 75 73 5c 90 02 10 3a 5c 70 72 6f 67 72 61 6d 20 66 69 6c 65 73 5c 6e 6f 74 65 73 5c 90 02 10 3a 5c 70 72 6f 67 72 61 6d 20 66 69 6c 65 73 5c 69 62 6d 5c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}