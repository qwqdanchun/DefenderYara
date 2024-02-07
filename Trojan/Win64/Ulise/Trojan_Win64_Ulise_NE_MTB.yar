
rule Trojan_Win64_Ulise_NE_MTB{
	meta:
		description = "Trojan:Win64/Ulise.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 08 00 00 04 00 "
		
	strings :
		$a_01_0 = {40 55 53 56 57 41 54 41 55 41 56 41 57 48 } //04 00  @USVWATAUAVAWH
		$a_01_1 = {50 78 26 46 50 30 } //03 00  Px&FP0
		$a_01_2 = {74 72 69 6c 6c 69 61 6e 2e 65 78 65 } //03 00  trillian.exe
		$a_01_3 = {73 70 61 77 6e 65 64 2e 65 78 65 } //01 00  spawned.exe
		$a_01_4 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 36 34 } //01 00  GetTickCount64
		$a_01_5 = {4f 70 65 6e 50 72 6f 63 65 73 73 } //01 00  OpenProcess
		$a_01_6 = {44 65 66 57 69 6e 64 6f 77 50 72 6f 63 41 } //01 00  DefWindowProcA
		$a_01_7 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //00 00  GetClipboardData
	condition:
		any of ($a_*)
 
}