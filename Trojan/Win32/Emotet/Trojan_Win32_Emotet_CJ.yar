
rule Trojan_Win32_Emotet_CJ{
	meta:
		description = "Trojan:Win32/Emotet.CJ,SIGNATURE_TYPE_PEHSTR,03 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 53 58 50 53 58 50 53 58 50 53 58 50 53 58 50 53 58 66 66 66 66 66 } //01 00  PSXPSXPSXPSXPSXPSXfffff
		$a_01_1 = {57 69 6e 53 43 61 72 64 2e 64 6c 6c } //01 00  WinSCard.dll
		$a_01_2 = {6b 62 64 74 68 33 20 28 33 2e 31 33 29 } //01 00  kbdth3 (3.13)
		$a_01_3 = {53 00 74 00 6f 00 68 00 20 00 4c 00 65 00 76 00 61 00 64 00 69 00 68 00 6f 00 74 00 65 00 20 00 28 00 6e 00 6f 00 6e 00 2d 00 53 00 68 00 69 00 66 00 74 00 4c 00 6f 00 63 00 6b 00 29 00 20 00 4b 00 65 00 79 00 62 00 6f 00 61 00 } //01 00  Stoh Levadihote (non-ShiftLock) Keyboa
		$a_01_4 = {54 00 68 00 61 00 69 00 20 00 50 00 61 00 74 00 74 00 61 00 63 00 68 00 6f 00 74 00 65 00 20 00 28 00 6e 00 6f 00 6e 00 2d 00 53 00 68 00 69 00 66 00 74 00 4c 00 6f 00 63 00 6b 00 29 00 20 00 4b 00 65 00 79 00 62 00 6f 00 61 00 } //01 00  Thai Pattachote (non-ShiftLock) Keyboa
		$a_01_5 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 56 00 69 00 64 00 65 00 6f 00 20 00 53 00 74 00 75 00 64 00 69 00 6f 00 20 00 4d 00 6f 00 6e 00 6f 00 20 00 42 00 75 00 69 00 6c 00 64 00 65 00 72 00 20 00 44 00 4c 00 4c 00 } //01 00  Microsoft Video Studio Mono Builder DLL
		$a_01_6 = {4c 00 45 00 41 00 44 00 54 00 4f 00 4f 00 4c 00 53 00 5c 00 78 00 61 00 65 00 20 00 44 00 4c 00 4c 00 20 00 66 00 6f 00 72 00 20 00 57 00 69 00 6e 00 33 00 32 00 } //00 00  LEADTOOLS\xae DLL for Win32
	condition:
		any of ($a_*)
 
}