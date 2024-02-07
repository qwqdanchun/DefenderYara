
rule Trojan_Win32_Dridex_RTH_MTB{
	meta:
		description = "Trojan:Win32/Dridex.RTH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {6e 6e 6e 76 65 70 76 6d 64 67 68 2e 64 6c 6c } //01 00  nnnvepvmdgh.dll
		$a_81_1 = {46 67 76 6d 46 70 6d 2e 70 64 62 } //01 00  FgvmFpm.pdb
		$a_81_2 = {47 6f 6f 67 6c 65 34 46 61 63 65 62 6f 6f 6b 6f 6e 65 4e 6f 6c 6f 61 64 75 70 64 61 74 65 73 47 } //01 00  Google4FacebookoneNoloadupdatesG
		$a_81_3 = {39 77 68 6f 62 72 6f 6e 63 6f 73 38 59 53 58 63 61 6c 6c 65 64 32 } //01 00  9whobroncos8YSXcalled2
		$a_81_4 = {45 43 68 72 6f 6d 65 42 74 68 65 42 } //01 00  EChromeBtheB
		$a_81_5 = {44 65 66 69 6e 65 44 6f 73 44 65 76 69 63 65 57 } //01 00  DefineDosDeviceW
		$a_81_6 = {4f 75 74 70 75 74 44 65 62 75 67 53 74 72 69 6e 67 41 } //00 00  OutputDebugStringA
	condition:
		any of ($a_*)
 
}