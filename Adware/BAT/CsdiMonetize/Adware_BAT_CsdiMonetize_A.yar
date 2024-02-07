
rule Adware_BAT_CsdiMonetize_A{
	meta:
		description = "Adware:BAT/CsdiMonetize.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 75 00 62 00 6c 00 69 00 63 00 4b 00 65 00 79 00 54 00 6f 00 6b 00 65 00 6e 00 3d 00 33 00 65 00 35 00 36 00 33 00 35 00 30 00 36 00 39 00 33 00 66 00 37 00 33 00 35 00 35 00 65 00 } //01 00  PublicKeyToken=3e56350693f7355e
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6a 00 61 00 6d 00 65 00 73 00 2e 00 6e 00 65 00 77 00 74 00 6f 00 6e 00 6b 00 69 00 6e 00 67 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 72 00 6f 00 6a 00 65 00 63 00 74 00 73 00 2f 00 6a 00 73 00 6f 00 6e 00 } //01 00  http://james.newtonking.com/projects/json
		$a_01_2 = {7b 00 37 00 31 00 34 00 36 00 31 00 66 00 30 00 34 00 2d 00 32 00 66 00 61 00 61 00 2d 00 34 00 62 00 62 00 39 00 2d 00 61 00 30 00 64 00 64 00 2d 00 32 00 38 00 61 00 37 00 39 00 31 00 30 00 31 00 62 00 35 00 39 00 39 00 7d 00 } //01 00  {71461f04-2faa-4bb9-a0dd-28a79101b599}
		$a_01_3 = {24 65 61 37 38 61 65 62 34 2d 38 61 35 36 2d 34 32 37 36 2d 38 31 64 61 2d 39 38 64 35 63 63 32 37 61 35 63 34 } //01 00  $ea78aeb4-8a56-4276-81da-98d5cc27a5c4
		$a_01_4 = {73 61 6c 65 73 5f 63 61 6d 70 61 69 67 6e 5f 74 61 72 67 65 74 5f 69 64 } //01 00  sales_campaign_target_id
		$a_01_5 = {43 69 6e 65 6d 61 53 69 6e 73 2e 50 72 6f 70 65 72 74 69 65 73 } //00 00  CinemaSins.Properties
	condition:
		any of ($a_*)
 
}
rule Adware_BAT_CsdiMonetize_A_2{
	meta:
		description = "Adware:BAT/CsdiMonetize.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 61 6c 65 73 5f 63 61 6d 70 61 69 67 6e 5f 74 61 72 67 65 74 5f 69 64 } //01 00  sales_campaign_target_id
		$a_01_1 = {75 73 65 72 5f 73 68 6f 77 5f 63 61 70 70 69 6e 67 } //01 00  user_show_capping
		$a_01_2 = {53 61 6e 4f 6f 2e 50 72 6f 70 65 72 74 69 65 73 } //01 00  SanOo.Properties
		$a_01_3 = {53 61 6e 4f 6f 2e 65 78 65 } //00 00  SanOo.exe
	condition:
		any of ($a_*)
 
}