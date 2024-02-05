
rule PWS_Win32_Tibia_AG{
	meta:
		description = "PWS:Win32/Tibia.AG,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 45 08 80 3c 03 2e 0f 94 c0 0f b6 c0 01 45 90 01 01 43 39 fb 72 eb 8b 45 90 01 01 83 c0 02 90 00 } //01 00 
		$a_01_1 = {81 ec dc 01 00 00 8b 5d 08 89 1c 24 ff 93 60 06 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}