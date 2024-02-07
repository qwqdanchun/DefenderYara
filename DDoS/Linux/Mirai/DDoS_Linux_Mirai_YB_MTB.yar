
rule DDoS_Linux_Mirai_YB_MTB{
	meta:
		description = "DDoS:Linux/Mirai.YB!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,0c 00 0c 00 06 00 00 05 00 "
		
	strings :
		$a_03_0 = {47 45 54 20 2f 6c 6f 67 69 6e 2e 63 67 69 3f 63 6c 69 3d 90 02 10 77 67 65 74 25 32 30 68 74 74 70 90 02 02 3a 2f 2f 90 02 03 2e 90 02 03 2e 90 02 03 2e 90 00 } //05 00 
		$a_03_1 = {24 28 2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 77 67 65 74 20 2d 67 20 90 02 03 2e 90 02 03 2e 90 02 03 2e 90 00 } //01 00 
		$a_01_2 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 53 45 46 41 } //01 00  User-Agent: SEFA
		$a_01_3 = {50 4f 53 54 20 2f 47 70 6f 6e 46 6f 72 6d 2f 64 69 61 67 5f 46 6f 72 6d 3f 69 6d 61 67 65 73 2f } //01 00  POST /GponForm/diag_Form?images/
		$a_01_4 = {50 4f 53 54 20 2f 70 69 63 64 65 73 63 2e 78 6d 6c } //01 00  POST /picdesc.xml
		$a_01_5 = {50 4f 53 54 20 2f 77 61 6e 69 70 63 6e 2e 78 6d 6c } //00 00  POST /wanipcn.xml
	condition:
		any of ($a_*)
 
}