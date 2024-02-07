
rule Trojan_Win32_Daiboo_A{
	meta:
		description = "Trojan:Win32/Daiboo.A,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0c 00 13 00 00 01 00 "
		
	strings :
		$a_80_0 = {45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 45 78 65 63 75 74 65 48 6f 6f 6b 73 } //Explorer\ShellExecuteHooks  01 00 
		$a_80_1 = {45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 } //Explorer\Browser Helper Objects  01 00 
		$a_80_2 = {45 78 70 6c 6f 72 65 72 5c 41 64 76 61 6e 63 65 64 5c 46 6f 6c 64 65 72 5c 48 69 64 64 65 6e } //Explorer\Advanced\Folder\Hidden  01 00 
		$a_80_3 = {65 6c 65 74 65 6d 65 2e 62 61 74 } //eleteme.bat  01 00 
		$a_80_4 = {69 66 20 65 78 69 73 74 20 22 } //if exist "  01 00 
		$a_80_5 = {67 6f 74 6f 20 74 72 79 } //goto try  01 00 
		$a_00_6 = {54 72 6f 6a 61 6e } //01 00  Trojan
		$a_00_7 = {46 69 72 65 77 61 6c 6c } //01 00  Firewall
		$a_80_8 = {4b 61 73 70 65 72 73 6b 79 } //Kaspersky  01 00 
		$a_80_9 = {41 6e 74 69 56 69 72 75 73 } //AntiVirus  01 00 
		$a_80_10 = {5a 6f 6e 65 41 6c 61 72 6d } //ZoneAlarm  01 00 
		$a_80_11 = {61 75 74 6f 72 75 6e 73 2e 65 78 65 } //autoruns.exe  01 00 
		$a_01_12 = {4a 75 6d 70 48 6f 6f 6b 4f 6e } //01 00  JumpHookOn
		$a_01_13 = {4a 75 6d 70 48 6f 6f 6b 4f 66 66 } //01 00  JumpHookOff
		$a_01_14 = {49 6e 73 65 72 74 2e 64 6c 6c } //9c ff  Insert.dll
		$a_01_15 = {53 70 65 63 69 61 6c 53 70 79 48 61 6e 64 6c 65 72 2e 64 6c 6c } //9c ff  SpecialSpyHandler.dll
		$a_00_16 = {64 65 74 61 69 6c 2e 77 65 62 72 6f 6f 74 63 6c 6f 75 64 61 76 2e 63 6f 6d 2f } //9c ff  detail.webrootcloudav.com/
		$a_00_17 = {57 00 65 00 62 00 72 00 6f 00 6f 00 74 00 20 00 53 00 65 00 63 00 75 00 72 00 65 00 41 00 6e 00 79 00 77 00 68 00 65 00 72 00 65 00 } //9c ff  Webroot SecureAnywhere
		$a_00_18 = {57 00 65 00 62 00 72 00 6f 00 6f 00 74 00 20 00 53 00 65 00 63 00 75 00 72 00 65 00 20 00 41 00 6e 00 79 00 77 00 68 00 65 00 72 00 65 00 } //00 00  Webroot Secure Anywhere
	condition:
		any of ($a_*)
 
}