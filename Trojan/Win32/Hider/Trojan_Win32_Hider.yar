
rule Trojan_Win32_Hider{
	meta:
		description = "Trojan:Win32/Hider,SIGNATURE_TYPE_PEHSTR,09 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {43 65 79 6c 6f 6e 53 70 79 4e 65 74 58 70 } //02 00  CeylonSpyNetXp
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 41 64 76 61 6e 63 65 64 5c 46 6f 6c 64 65 72 5c 53 75 70 65 72 48 69 64 64 65 6e } //02 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\SuperHidden
		$a_01_2 = {43 53 4e 65 74 4d 61 6e 61 67 65 72 58 70 } //02 00  CSNetManagerXp
		$a_01_3 = {69 73 61 73 73 2e 65 78 65 } //02 00  isass.exe
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 65 64 20 56 69 64 65 6f 20 46 69 6c 65 73 2e 65 78 65 } //01 00  Downloaded Video Files.exe
		$a_01_5 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //00 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
	condition:
		any of ($a_*)
 
}