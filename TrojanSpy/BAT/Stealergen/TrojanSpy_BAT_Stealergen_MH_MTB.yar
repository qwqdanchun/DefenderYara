
rule TrojanSpy_BAT_Stealergen_MH_MTB{
	meta:
		description = "TrojanSpy:BAT/Stealergen.MH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 00 6c 00 66 00 61 00 6b 00 6c 00 6f 00 77 00 64 00 6f 00 } //01 00  olfaklowdo
		$a_01_1 = {6c 66 61 6b 64 77 6a 66 6d } //01 00  lfakdwjfm
		$a_01_2 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00  VirtualProtect
		$a_01_3 = {57 72 69 74 65 } //01 00  Write
		$a_01_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_5 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_6 = {45 6e 63 6f 64 69 6e 67 } //01 00  Encoding
		$a_01_7 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_8 = {42 6c 6f 63 6b 43 6f 70 79 } //01 00  BlockCopy
		$a_01_9 = {42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  Base64String
	condition:
		any of ($a_*)
 
}