
rule Ransom_Win64_Basta_PIC_MTB{
	meta:
		description = "Ransom:Win64/Basta.PIC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 33 d0 8b 83 90 01 04 81 f2 90 01 04 0f af c1 48 63 8b 90 01 04 89 93 90 01 04 0f b6 93 90 01 04 44 89 8b 90 01 04 44 2b cf 44 01 4b 64 89 83 0c 01 00 00 41 0f b6 c2 0f af d0 48 8b 83 90 01 04 88 14 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}