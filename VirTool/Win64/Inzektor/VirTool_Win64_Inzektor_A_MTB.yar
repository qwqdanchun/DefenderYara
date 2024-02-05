
rule VirTool_Win64_Inzektor_A_MTB{
	meta:
		description = "VirTool:Win64/Inzektor.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {4c 8b cd c7 44 24 28 00 00 00 00 45 33 c0 33 d2 48 89 74 24 20 48 8b cf ff 15 } //01 00 
		$a_02_1 = {48 ff c3 80 3c 18 00 75 90 01 01 4c 8b cb 48 c7 44 24 20 00 00 00 00 4c 8d 90 01 03 48 8b d6 48 8b cf ff 15 90 00 } //01 00 
		$a_02_2 = {49 ff c0 42 80 3c 00 00 75 90 01 01 33 d2 c7 44 24 20 04 00 00 00 41 b9 00 30 00 00 48 8b cf ff 15 90 00 } //01 00 
		$a_02_3 = {41 b8 04 01 00 00 48 8d 4c 24 6c 48 8b d7 ff 15 90 01 04 85 c0 74 90 01 01 48 8d 90 01 03 48 8b cb ff 15 90 01 04 85 c0 75 90 01 01 33 db 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}