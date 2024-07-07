
rule TrojanDropper_O97M_GraceWire_BV_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.BV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {4b 36 47 4f 41 4d 2e 4c 61 62 65 6c 31 31 2e 54 61 67 } //1 K6GOAM.Label11.Tag
		$a_03_1 = {50 75 62 6c 69 63 20 50 72 6f 70 65 72 74 79 20 47 65 74 20 53 70 65 65 64 28 29 20 41 73 20 49 6e 74 65 67 65 72 90 02 08 53 70 65 65 64 20 3d 20 76 53 70 65 65 64 90 00 } //1
		$a_01_2 = {76 53 70 65 65 64 20 3d 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 57 6f 72 6b 73 68 65 65 74 46 75 6e 63 74 69 6f 6e 2e 4d 69 6e 28 73 70 2c 20 31 30 30 29 } //1 vSpeed = Application.WorksheetFunction.Min(sp, 100)
		$a_03_3 = {76 53 70 65 65 64 20 3d 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 57 6f 72 6b 73 68 65 65 74 46 75 6e 63 74 69 6f 6e 2e 4d 61 78 28 76 53 70 65 65 64 2c 20 2d 31 30 30 29 90 0c 02 00 45 6e 64 20 50 72 6f 70 65 72 74 79 90 00 } //1
		$a_01_4 = {43 68 65 63 6b 43 61 72 20 3d 20 63 61 72 2e 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 73 28 22 22 20 26 20 44 72 69 76 65 29 } //1 CheckCar = car.SpecialFolders("" & Drive)
		$a_03_5 = {49 66 20 4c 65 6e 28 6c 70 29 20 3c 3e 20 36 20 54 68 65 6e 20 45 72 72 2e 52 61 69 73 65 20 28 78 6c 45 72 72 56 61 6c 75 65 29 20 27 52 61 69 73 65 20 65 72 72 6f 72 90 02 10 76 4c 69 63 65 6e 73 65 50 6c 61 74 65 20 3d 20 6c 70 90 0c 02 00 45 6e 64 20 50 72 6f 70 65 72 74 79 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}