
rule Trojan_Win32_Dridex_PE_MTB{
	meta:
		description = "Trojan:Win32/Dridex.PE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {20 45 53 20 41 50 50 20 45 5f 20 } //01 00   ES APP E_ 
		$a_81_1 = {20 65 6c 66 20 45 58 20 } //01 00   elf EX 
		$a_81_2 = {52 65 61 64 46 69 6c 65 45 78 } //01 00  ReadFileEx
		$a_81_3 = {4f 75 74 70 75 74 44 65 62 75 67 53 74 72 69 6e 67 41 } //01 00  OutputDebugStringA
		$a_81_4 = {46 69 6e 64 4e 65 78 74 55 72 6c 43 61 63 68 65 47 72 6f 75 70 } //01 00  FindNextUrlCacheGroup
		$a_81_5 = {46 69 6e 64 45 78 65 63 75 74 61 62 6c 65 57 } //00 00  FindExecutableW
	condition:
		any of ($a_*)
 
}