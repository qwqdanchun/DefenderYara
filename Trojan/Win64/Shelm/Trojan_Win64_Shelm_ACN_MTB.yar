
rule Trojan_Win64_Shelm_ACN_MTB{
	meta:
		description = "Trojan:Win64/Shelm.ACN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 6c 00 65 00 76 00 61 00 74 00 69 00 6f 00 6e 00 3a 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 21 00 6e 00 65 00 77 00 3a 00 7b 00 33 00 45 00 35 00 46 00 43 00 37 00 46 00 39 00 2d 00 39 00 41 00 35 00 31 00 2d 00 34 00 33 00 36 00 37 00 2d 00 39 00 30 00 36 00 33 00 2d 00 41 00 31 00 32 00 30 00 32 00 34 00 34 00 46 00 42 00 45 00 43 00 37 00 7d 00 } //01 00  Elevation:Administrator!new:{3E5FC7F9-9A51-4367-9063-A120244FBEC7}
		$a_01_1 = {31 34 4e 69 74 72 6f 49 6e 73 74 61 6c 6c 65 72 } //01 00  14NitroInstaller
		$a_01_2 = {31 34 4e 69 74 72 6f 67 65 6e 41 63 74 69 6f 6e } //01 00  14NitrogenAction
		$a_01_3 = {31 34 4e 69 74 72 6f 67 65 6e 53 74 61 67 65 72 } //01 00  14NitrogenStager
		$a_01_4 = {31 34 4e 69 74 72 6f 67 65 6e 54 61 72 67 65 74 } //00 00  14NitrogenTarget
	condition:
		any of ($a_*)
 
}