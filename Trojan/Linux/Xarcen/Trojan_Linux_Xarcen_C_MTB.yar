
rule Trojan_Linux_Xarcen_C_MTB{
	meta:
		description = "Trojan:Linux/Xarcen.C!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {23 47 72 6f 75 6e 64 68 6f 67 } //01 00  #Groundhog
		$a_00_1 = {33 20 2a 20 2a 20 2a 20 2a 20 72 6f 6f 74 20 2f 65 74 63 2f 63 72 6f 6e 2e 68 6f 75 72 6c 79 2f 6e 6f 63 } //01 00  3 * * * * root /etc/cron.hourly/noc
		$a_02_2 = {74 63 70 00 2f 70 72 6f 63 2f 6e 65 74 2f 74 63 70 90 01 01 74 63 70 36 90 01 01 2f 70 72 6f 63 2f 6e 65 74 2f 74 63 70 36 90 01 01 25 64 09 7c 7c 25 73 90 00 } //01 00 
		$a_02_3 = {65 78 65 63 20 25 73 0a 90 01 01 2d 63 90 01 01 6b 70 75 4a 6b 73 63 3d 90 01 01 25 73 90 01 01 6d 5a 4b 66 6d 5a 48 48 90 01 01 6b 5a 4f 57 6c 73 63 3d 90 01 01 6e 70 2b 55 67 35 4f 4b 78 77 3d 3d 90 01 01 6e 4a 4f 57 6e 35 53 62 6c 35 2f 48 90 01 01 69 4a 65 63 6b 35 61 66 78 77 3d 3d 90 01 01 6e 4a 61 62 6e 63 63 3d 90 01 01 6d 35 61 54 6a 4a 2f 48 00 25 64 3a 25 64 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}