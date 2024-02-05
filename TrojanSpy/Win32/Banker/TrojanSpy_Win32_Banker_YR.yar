
rule TrojanSpy_Win32_Banker_YR{
	meta:
		description = "TrojanSpy:Win32/Banker.YR,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {53 61 66 65 20 6f 66 20 74 68 65 20 73 6f 66 74 77 61 72 65 20 73 65 63 75 72 69 74 79 00 } //05 00 
		$a_01_1 = {53 65 67 75 72 69 64 61 64 00 00 00 54 65 6e 64 72 } //02 00 
		$a_01_2 = {66 6f 74 75 69 6e 68 6f 00 } //02 00 
		$a_01_3 = {62 61 69 78 6f 43 6c 69 63 6b 07 54 6c 69 67 61 64 6f } //00 00 
	condition:
		any of ($a_*)
 
}