
rule Trojan_BAT_AgentTesla_DXE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DXE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 57 30 32 00 4c 65 76 65 6c 00 } //01 00 
		$a_01_1 = {00 70 6f 00 57 30 33 00 } //01 00  瀀oし3
		$a_01_2 = {00 78 73 61 00 57 30 34 00 41 41 00 } //01 00  砀慳圀㐰䄀A
		$a_01_3 = {00 43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 00 } //01 00 
		$a_01_4 = {00 47 65 74 4d 65 74 68 6f 64 00 } //01 00 
		$a_01_5 = {00 47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 00 } //01 00  䜀瑥硅潰瑲摥祔数s
		$a_81_6 = {54 6f 57 69 6e 33 32 } //01 00  ToWin32
		$a_81_7 = {47 65 74 50 69 78 65 6c } //00 00  GetPixel
	condition:
		any of ($a_*)
 
}