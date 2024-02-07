
rule Trojan_Win32_Wintrim_A{
	meta:
		description = "Trojan:Win32/Wintrim.A,SIGNATURE_TYPE_PEHSTR,17 00 14 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 73 65 63 75 72 69 74 79 2d 75 70 64 61 74 65 72 2e 63 6f 6d 2f 62 69 6e 61 72 69 65 73 2f } //0a 00  http://security-updater.com/binaries/
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 6d 63 } //0a 00  SOFTWARE\mc
		$a_01_2 = {68 74 74 70 3a 2f 2f 36 36 2e 34 30 2e 39 2e 32 34 36 2f 62 69 6e 61 72 69 65 73 } //01 00  http://66.40.9.246/binaries
		$a_01_3 = {4e 61 76 69 50 72 6f 6d 6f 44 61 74 61 3a 64 65 63 6f 6d 70 72 65 73 73 20 66 61 69 6c 65 64 2e } //01 00  NaviPromoData:decompress failed.
		$a_01_4 = {42 75 69 6c 64 50 6f 70 75 70 54 69 74 6c 65 } //01 00  BuildPopupTitle
		$a_01_5 = {4f 70 65 6e 50 6f 70 75 70 41 6e 64 50 65 72 73 69 73 74 } //01 00  OpenPopupAndPersist
		$a_01_6 = {26 50 61 73 73 77 6f 72 64 3d 45 57 57 57 57 49 43 } //01 00  &Password=EWWWWIC
		$a_01_7 = {6d 73 6c 61 67 65 6e 74 } //01 00  mslagent
		$a_01_8 = {55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 00 47 73 6d 00 53 73 6d 00 66 6e 45 67 6d 63 68 6b 00 73 74 62 67 6e } //01 00 
		$a_01_9 = {2d 75 6e 69 6e 73 74 61 6c 6c 00 6d 79 6d 75 74 73 67 6c 77 6f 72 6b } //00 00 
	condition:
		any of ($a_*)
 
}