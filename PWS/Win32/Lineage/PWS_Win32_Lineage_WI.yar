
rule PWS_Win32_Lineage_WI{
	meta:
		description = "PWS:Win32/Lineage.WI,SIGNATURE_TYPE_PEHSTR_EXT,2d 00 2d 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {6c 32 55 6e 72 65 61 6c 57 57 69 6e 64 6f 77 73 56 69 65 77 70 6f 72 74 57 69 6e 64 6f 77 90 05 04 01 00 4c 69 6e 65 61 67 65 20 49 49 90 00 } //0a 00 
		$a_00_1 = {4c 69 6e 65 61 67 65 20 6c 61 75 6e 63 68 65 72 } //0a 00  Lineage launcher
		$a_00_2 = {53 68 65 6c 6c 48 6f 6f 6b 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //0a 00 
		$a_00_3 = {46 77 73 32 5f 33 32 2e 64 6c 6c } //05 00  Fws2_32.dll
		$a_01_4 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //05 00  InternetReadFile
		$a_00_5 = {43 61 6c 6c 4e 65 78 74 48 6f 6f 6b 45 78 } //00 00  CallNextHookEx
	condition:
		any of ($a_*)
 
}