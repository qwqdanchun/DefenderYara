
rule TrojanDropper_O97M_GraceWire_CY_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.CY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 50 72 6f 70 65 72 74 79 20 47 65 74 20 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 73 28 29 20 41 73 20 53 74 72 69 6e 67 } //01 00  Public Property Get SpecialFolders() As String
		$a_01_1 = {43 68 65 63 6b 43 61 72 20 3d 20 63 61 72 2e 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 73 28 22 22 20 26 20 44 72 69 76 65 29 } //01 00  CheckCar = car.SpecialFolders("" & Drive)
		$a_01_2 = {50 75 62 6c 69 63 20 50 72 6f 70 65 72 74 79 20 4c 65 74 20 53 70 65 65 64 28 73 70 20 41 73 20 49 6e 74 65 67 65 72 29 } //01 00  Public Property Let Speed(sp As Integer)
		$a_03_3 = {50 75 62 6c 69 63 20 53 75 62 20 56 69 73 74 61 51 28 57 68 65 72 65 54 6f 47 6f 29 90 02 05 44 6f 45 76 65 6e 74 73 90 00 } //01 00 
		$a_01_4 = {50 75 62 6c 69 63 20 53 75 62 20 56 6f 6f 6f 6f 6f 68 65 61 64 28 29 } //01 00  Public Sub Vooooohead()
		$a_03_5 = {45 6e 64 20 49 66 90 0c 02 00 4d 6f 64 75 6c 65 32 2e 57 75 7a 7a 79 42 75 64 20 33 39 30 30 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_01_6 = {56 69 73 74 61 51 20 63 74 61 63 6b 50 75 70 } //01 00  VistaQ ctackPup
		$a_03_7 = {4b 69 6c 6c 20 4b 65 79 90 02 10 4e 65 78 74 20 4b 65 79 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}