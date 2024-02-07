
rule Trojan_Win32_VBObfuse_SZ_MTB{
	meta:
		description = "Trojan:Win32/VBObfuse.SZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 45 00 73 00 37 00 35 00 51 00 67 00 52 00 41 00 32 00 34 00 34 00 } //01 00  aEs75QgRA244
		$a_01_1 = {4f 00 41 00 6b 00 31 00 36 00 36 00 } //01 00  OAk166
		$a_01_2 = {50 00 72 00 6f 00 6c 00 6f 00 67 00 73 00 63 00 65 00 6e 00 74 00 72 00 61 00 31 00 } //01 00  Prologscentra1
		$a_01_3 = {6b 00 61 00 72 00 79 00 6f 00 70 00 6c 00 61 00 73 00 6d 00 69 00 6e 00 64 00 74 00 72 00 6e 00 67 00 65 00 76 00 61 00 72 00 6d 00 65 00 73 00 6b 00 61 00 62 00 65 00 72 00 61 00 61 00 64 00 66 00 72 00 65 00 62 00 6c 00 } //01 00  karyoplasmindtrngevarmeskaberaadfrebl
		$a_01_4 = {46 00 6f 00 72 00 66 00 72 00 69 00 73 00 6b 00 68 00 65 00 61 00 72 00 74 00 73 00 74 00 72 00 69 00 6e 00 67 00 73 00 6e 00 6f 00 6e 00 69 00 6e 00 64 00 75 00 73 00 74 00 72 00 69 00 61 00 6c 00 } //00 00  Forfriskheartstringsnonindustrial
	condition:
		any of ($a_*)
 
}