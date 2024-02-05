
rule VirTool_Win64_HeavGatez_A_MTB{
	meta:
		description = "VirTool:Win64/HeavGatez.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {48 c7 44 24 30 00 00 00 00 48 c7 44 24 28 00 00 00 00 48 89 44 24 20 4c 8d 90 01 05 4c 8b 85 28 02 00 00 ba 05 00 00 00 48 8b 4d 68 e8 90 00 } //01 00 
		$a_00_1 = {8b 05 b2 c0 00 00 83 c0 46 8b c0 48 8b 8d 40 01 00 00 48 89 08 8b 05 9d c0 00 00 83 c0 56 8b c0 } //01 00 
		$a_00_2 = {8b 05 b2 c0 00 00 83 c0 46 8b c0 48 8b 8d 40 01 00 00 48 89 08 } //01 00 
		$a_02_3 = {48 c7 44 24 40 00 00 00 00 48 c7 44 24 38 80 00 00 00 48 c7 44 24 30 01 00 00 00 48 c7 44 24 28 00 00 00 00 48 c7 44 24 20 00 00 00 00 41 b9 00 00 00 40 4c 8d 90 01 05 ba 07 00 00 00 48 8b 4d 48 e8 90 00 } //01 00 
		$a_02_4 = {33 c0 b9 64 00 00 00 f3 aa 48 8d 90 01 05 b9 04 01 00 00 ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}