
rule TrojanDropper_O97M_GraceWire_CD_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.CD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {76 53 70 65 65 64 20 3d 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 57 6f 72 6b 73 68 65 65 74 46 75 6e 63 74 69 6f 6e 2e 4d 69 6e 28 73 70 2c 20 31 30 30 29 } //01 00  vSpeed = Application.WorksheetFunction.Min(sp, 100)
		$a_01_1 = {76 53 70 65 65 64 20 3d 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 57 6f 72 6b 73 68 65 65 74 46 75 6e 63 74 69 6f 6e 2e 4d 61 78 28 76 53 70 65 65 64 2c 20 2d 31 30 30 29 } //01 00  vSpeed = Application.WorksheetFunction.Max(vSpeed, -100)
		$a_01_2 = {43 68 65 63 6b 43 61 72 20 3d 20 63 61 72 2e 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 73 28 22 22 20 26 20 44 72 69 76 65 29 } //01 00  CheckCar = car.SpecialFolders("" & Drive)
		$a_03_3 = {49 66 20 4c 65 6e 28 6c 70 29 20 3c 3e 20 36 20 54 68 65 6e 20 45 72 72 2e 52 61 69 73 65 20 28 78 6c 45 72 72 56 61 6c 75 65 29 20 27 52 61 69 73 65 20 65 72 72 6f 72 90 02 10 76 4c 69 63 65 6e 73 65 50 6c 61 74 65 20 3d 20 6c 70 90 00 } //01 00 
		$a_03_4 = {4f 70 65 6e 20 43 6f 6d 70 6f 73 69 74 69 6f 6e 32 20 46 6f 72 20 42 69 6e 61 72 79 20 41 63 63 65 73 73 20 52 65 61 64 20 41 73 20 44 69 73 70 75 74 65 43 68 61 6e 6e 65 6c 31 90 02 04 44 69 6d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}