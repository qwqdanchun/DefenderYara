
rule Trojan_Win32_Zenpack_NE_MTB{
	meta:
		description = "Trojan:Win32/Zenpack.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 07 00 00 05 00 "
		
	strings :
		$a_01_0 = {6e 69 68 75 6c 65 62 75 63 69 6e 6f } //05 00  nihulebucino
		$a_01_1 = {56 00 75 00 78 00 6f 00 74 00 69 00 6b 00 75 00 77 00 75 00 6a 00 } //05 00  Vuxotikuwuj
		$a_01_2 = {67 00 6f 00 63 00 75 00 67 00 61 00 7a 00 75 00 74 00 65 00 63 00 6f 00 6a 00 75 00 6a 00 } //05 00  gocugazutecojuj
		$a_01_3 = {70 6f 66 69 67 69 79 61 6b 6f 79 75 66 75 64 65 } //01 00  pofigiyakoyufude
		$a_01_4 = {49 73 50 72 6f 63 65 73 73 6f 72 46 65 61 74 75 72 65 50 72 65 73 65 6e 74 } //01 00  IsProcessorFeaturePresent
		$a_01_5 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_01_6 = {47 65 74 50 72 6f 63 41 64 64 72 65 73 73 } //00 00  GetProcAddress
	condition:
		any of ($a_*)
 
}