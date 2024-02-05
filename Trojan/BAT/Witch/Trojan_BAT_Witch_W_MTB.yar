
rule Trojan_BAT_Witch_W_MTB{
	meta:
		description = "Trojan:BAT/Witch.W!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 04 00 00 0a 00 "
		
	strings :
		$a_00_0 = {03 58 0c 08 69 19 5f 3a 09 00 00 00 08 4a 13 04 dd 36 00 00 00 12 01 e0 0d 09 08 47 52 09 17 d3 58 08 17 d3 58 47 52 09 18 d3 58 08 18 d3 58 47 52 09 19 d3 58 08 19 d3 58 47 52 07 0a } //03 00 
		$a_80_1 = {57 69 6e 64 6f 77 73 2e 44 52 4f 50 2e 72 65 73 6f 75 72 63 65 73 } //Windows.DROP.resources  03 00 
		$a_80_2 = {7b 31 31 31 31 31 2d 32 32 32 32 32 2d 32 30 30 30 31 2d 30 30 30 30 32 7d } //{11111-22222-20001-00002}  03 00 
		$a_80_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //CreateDecryptor  00 00 
	condition:
		any of ($a_*)
 
}