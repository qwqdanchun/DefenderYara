
rule Trojan_BAT_AgentTesla_ABA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {2b 1d 09 6f 90 02 03 0a 13 07 08 11 07 07 02 11 07 18 5a 18 6f 90 02 03 0a 6f 90 02 03 0a 9c 09 6f 90 00 } //01 00 
		$a_01_1 = {45 6c 72 65 64 6b 63 63 6a 72 6e 65 6d 71 71 71 69 64 6f 68 6b } //01 00  Elredkccjrnemqqqidohk
		$a_01_2 = {47 65 74 42 75 66 66 65 72 } //00 00  GetBuffer
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_ABA_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.ABA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 04 00 00 06 00 "
		
	strings :
		$a_03_0 = {16 0d 2b 31 00 07 08 09 28 90 01 03 06 28 90 01 03 06 00 28 90 01 03 06 28 90 01 03 06 28 90 01 03 06 00 7e 90 01 03 04 06 28 90 01 03 06 d2 9c 00 09 17 58 0d 09 17 fe 04 13 04 11 04 2d c5 06 17 58 0a 00 08 17 58 0c 08 20 90 01 03 00 fe 04 13 05 11 05 2d a9 28 90 01 03 0a 7e 90 01 03 04 6f 90 01 03 0a 28 90 01 03 06 72 90 01 03 70 6f 90 01 03 0a 80 90 01 03 04 2a 90 00 } //01 00 
		$a_01_1 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_01_2 = {47 00 72 00 65 00 79 00 } //01 00  Grey
		$a_01_3 = {41 00 70 00 70 00 4b 00 61 00 74 00 61 00 43 00 73 00 76 00 56 00 69 00 65 00 77 00 65 00 72 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //00 00  AppKataCsvViewer.Properties.Resources
	condition:
		any of ($a_*)
 
}