
rule HackTool_Win32_Daoak_A{
	meta:
		description = "HackTool:Win32/Daoak.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 6f 66 74 77 61 72 65 5c 63 6c 61 73 73 65 73 5c 63 6c 73 69 64 5c 7b 38 39 35 36 35 32 37 36 2d 61 37 31 34 2d 34 61 34 33 2d 39 31 32 65 2d 39 37 38 62 39 33 35 65 64 63 63 63 7d } //01 00  software\classes\clsid\{89565276-a714-4a43-912e-978b935edccc}
		$a_00_1 = {53 6f 66 74 77 61 72 65 5c 43 6c 61 73 73 65 73 5c 44 79 6e 61 6d 69 63 57 72 61 70 70 65 72 58 } //01 00  Software\Classes\DynamicWrapperX
		$a_03_2 = {0f b7 0c 48 b8 90 01 04 01 c1 0f b7 0c 51 b8 90 01 04 8d 1c 08 8b 46 08 8b 56 0c 8b 7d 1c 31 c9 ff d3 72 52 90 00 } //01 00 
		$a_03_3 = {ff 53 18 ba 00 04 00 00 83 f8 00 74 b6 81 fa 00 04 00 00 74 03 83 c2 02 68 90 01 04 50 52 6a 00 6a 00 e8 90 01 04 31 c0 eb b0 90 00 } //01 00 
		$a_01_4 = {75 08 85 f6 74 42 89 f2 eb 05 85 f6 0f 44 f2 52 50 e8 ca 00 00 00 72 1b 89 d7 8b 4d fc ff 75 20 ff 75 1c ff 75 18 56 50 e8 } //01 00 
		$a_03_5 = {55 53 57 89 e5 81 ec 04 02 00 00 ff 75 10 e8 90 01 04 85 c0 0f 84 84 00 00 00 89 c3 8b 7d 14 81 ff ff ff 00 00 76 25 8d bd fc fd ff ff 6a 00 6a 00 68 00 01 00 00 57 6a ff ff 75 14 6a 00 6a 00 e8 90 01 04 c6 87 ff 00 00 00 00 57 53 e8 90 01 04 85 c0 74 0b 89 da f8 89 ec 90 00 } //00 00 
		$a_00_6 = {5d 04 00 } //00 a8 
	condition:
		any of ($a_*)
 
}