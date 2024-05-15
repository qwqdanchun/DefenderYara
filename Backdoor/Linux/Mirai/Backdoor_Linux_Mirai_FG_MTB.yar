
rule Backdoor_Linux_Mirai_FG_MTB{
	meta:
		description = "Backdoor:Linux/Mirai.FG!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {c2 49 00 08 80 a0 60 00 32 bf ff fe 88 01 20 01 c2 4a 40 00 80 a0 60 00 02 90 01 03 84 10 20 00 84 00 a0 01 90 00 } //01 00 
		$a_03_1 = {c4 0a 00 00 c6 0a 80 04 82 00 bf bf 92 02 7f ff 82 08 60 ff 88 01 20 01 80 a0 60 19 18 90 01 03 90 01 01 02 20 01 84 10 a0 60 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}