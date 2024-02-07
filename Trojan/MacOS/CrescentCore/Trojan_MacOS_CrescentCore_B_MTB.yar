
rule Trojan_MacOS_CrescentCore_B_MTB{
	meta:
		description = "Trojan:MacOS/CrescentCore.B!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 06 00 00 02 00 "
		
	strings :
		$a_00_0 = {63 6f 6d 2e 6c 69 67 68 74 73 2e 4f 62 6c 69 76 69 6f 6e } //01 00  com.lights.Oblivion
		$a_00_1 = {35 55 41 37 48 57 34 38 59 37 31 } //01 00  5UA7HW48Y71
		$a_00_2 = {69 6f 72 65 67 20 2d 6c 20 7c 20 67 72 65 70 20 2d 65 20 4d 61 6e 75 66 61 63 74 75 72 65 72 } //01 00  ioreg -l | grep -e Manufacturer
		$a_02_3 = {55 70 64 61 74 65 72 90 02 02 4e 65 74 77 6f 72 6b 44 6f 77 6e 6c 6f 61 64 65 72 90 00 } //01 00 
		$a_00_4 = {44 6f 77 6e 6c 6f 61 64 4f 66 66 65 72 4f 62 6a 65 63 74 } //02 00  DownloadOfferObject
		$a_00_5 = {48 89 43 50 48 89 53 58 49 8d b6 03 00 3a 00 48 bf 49 67 6b 54 44 67 77 49 e8 ba 0e 00 00 48 89 43 60 48 89 53 68 48 bf 4e 51 34 54 41 67 6b 3d 4c 89 fe e8 a0 0e 00 00 48 89 43 70 48 89 53 78 48 bf 49 78 4d 41 46 77 51 3d 4c 89 fe e8 86 0e 00 00 48 89 83 80 00 00 00 48 89 93 88 00 00 00 49 8d b6 02 26 14 17 48 bf 4d 44 41 6a 45 77 34 57 e8 62 0e 00 00 48 89 83 90 00 00 00 48 89 93 98 00 00 00 48 bf 4f 41 41 50 42 51 51 5a 4c 89 fe } //00 00 
		$a_00_6 = {5d 04 00 } //00 e4 
	condition:
		any of ($a_*)
 
}