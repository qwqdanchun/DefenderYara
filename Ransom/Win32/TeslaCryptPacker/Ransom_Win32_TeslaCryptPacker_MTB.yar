
rule Ransom_Win32_TeslaCryptPacker_MTB{
	meta:
		description = "Ransom:Win32/TeslaCryptPacker!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {85 c9 74 09 8b 55 90 01 02 55 90 01 01 89 55 90 01 01 8b 45 90 01 02 45 90 01 01 89 45 90 01 01 8b 4d 90 01 02 4d 90 01 01 89 4d 90 01 01 8b 55 90 01 02 55 90 01 01 89 55 90 01 01 8b 45 90 01 02 45 90 01 01 89 45 90 01 01 8b 4d 90 00 } //01 00 
		$a_03_1 = {85 d2 74 09 8b 45 90 01 02 45 90 01 01 89 45 90 01 01 8b 4d 90 01 02 4d 90 01 01 85 c9 74 09 8b 55 90 01 02 55 90 01 01 89 55 90 01 01 8b 45 90 01 02 45 90 01 01 85 c0 74 09 8b 4d 90 01 02 4d 90 01 01 89 4d 90 01 01 8b 55 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}