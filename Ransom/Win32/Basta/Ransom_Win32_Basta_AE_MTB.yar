
rule Ransom_Win32_Basta_AE_MTB{
	meta:
		description = "Ransom:Win32/Basta.AE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {88 14 01 a1 90 01 04 ff 80 90 01 04 8b 47 90 01 01 33 87 90 01 04 8b 0d 90 01 04 35 90 01 04 29 05 90 01 04 8b 47 90 01 01 2d 90 01 04 0f af 41 90 01 01 89 41 90 01 01 a1 90 01 04 8b 15 90 01 04 05 90 01 04 03 47 90 01 01 31 82 90 01 04 8b 87 90 01 04 2b 87 90 01 04 2d 90 01 04 0f af 47 90 01 01 89 47 90 01 01 8b 07 83 f0 90 01 01 29 47 90 01 01 8b 87 90 01 04 35 90 00 } //01 00 
		$a_01_1 = {56 69 73 69 62 6c 65 45 6e 74 72 79 } //00 00 
	condition:
		any of ($a_*)
 
}