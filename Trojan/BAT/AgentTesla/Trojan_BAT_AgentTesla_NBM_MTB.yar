
rule Trojan_BAT_AgentTesla_NBM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NBM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 00 2f 00 2f 00 67 00 6c 00 61 00 73 00 73 00 63 00 6c 00 69 00 63 00 6b 00 65 00 72 00 2e 00 78 00 79 00 7a 00 2f 00 61 00 75 00 74 00 68 00 2e 00 74 00 78 00 74 00 } //01 00  ://glassclicker.xyz/auth.txt
		$a_01_1 = {24 36 38 62 66 64 66 64 39 2d 34 30 32 37 2d 34 63 34 38 2d 62 39 62 38 2d 31 33 31 37 37 30 66 36 35 39 66 30 } //01 00  $68bfdfd9-4027-4c48-b9b8-131770f659f0
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //01 00  DownloadString
		$a_01_3 = {63 00 69 00 6d 00 76 00 32 00 } //01 00  cimv2
		$a_01_4 = {63 00 70 00 73 00 20 00 64 00 72 00 6f 00 70 00 73 00 } //01 00  cps drops
		$a_01_5 = {66 72 65 65 67 6c 61 73 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  freeglass.resources
		$a_01_6 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}