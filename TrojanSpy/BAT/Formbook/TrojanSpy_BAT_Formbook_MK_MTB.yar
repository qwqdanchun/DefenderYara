
rule TrojanSpy_BAT_Formbook_MK_MTB{
	meta:
		description = "TrojanSpy:BAT/Formbook.MK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 12 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 54 31 2e 64 6c 6c } //01 00  NT1.dll
		$a_01_1 = {6d 61 6c 68 65 75 72 65 75 78 } //01 00  malheureux
		$a_01_2 = {67 65 74 5f 4a 6f 6e 61 73 } //01 00  get_Jonas
		$a_01_3 = {73 65 74 5f 4a 6f 6e 61 73 } //01 00  set_Jonas
		$a_01_4 = {47 65 74 44 61 74 61 } //01 00  GetData
		$a_01_5 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //01 00  GetExecutingAssembly
		$a_01_6 = {47 65 74 45 6e 74 72 79 41 73 73 65 6d 62 6c 79 } //01 00  GetEntryAssembly
		$a_01_7 = {67 65 74 5f 45 76 69 64 65 6e 63 65 } //01 00  get_Evidence
		$a_01_8 = {47 65 74 4d 61 6e 69 66 65 73 74 52 65 73 6f 75 72 63 65 4e 61 6d 65 73 } //01 00  GetManifestResourceNames
		$a_01_9 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_10 = {53 65 74 44 61 74 61 } //01 00  SetData
		$a_01_11 = {52 65 61 64 } //01 00  Read
		$a_01_12 = {54 6f 41 72 72 61 79 } //01 00  ToArray
		$a_01_13 = {67 65 74 5f 57 69 64 74 68 } //01 00  get_Width
		$a_01_14 = {67 65 74 5f 4c 65 6e 67 74 68 } //01 00  get_Length
		$a_01_15 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_01_16 = {42 69 74 43 6f 6e 76 65 72 74 65 72 } //01 00  BitConverter
		$a_01_17 = {54 6f 49 6e 74 33 32 } //00 00  ToInt32
	condition:
		any of ($a_*)
 
}