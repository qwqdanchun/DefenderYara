
rule PWS_Win32_Bzub{
	meta:
		description = "PWS:Win32/Bzub,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 08 00 10 00 00 01 00 "
		
	strings :
		$a_00_0 = {55 8b ec 51 51 8b 45 08 53 56 57 66 81 38 4d 5a 0f 85 } //01 00 
		$a_00_1 = {50 45 00 00 0f 85 } //02 00 
		$a_00_2 = {c1 e9 1d c1 ee 1e 83 e1 01 83 e6 01 c1 ef 1f f6 43 03 02 } //02 00 
		$a_02_3 = {8b 45 fc 8d 90 01 01 01 8a c1 f6 e9 f6 e9 90 00 } //02 00 
		$a_00_4 = {74 33 a9 00 00 00 80 74 07 25 ff ff 00 00 eb 05 03 c5 83 c0 02 50 ff 74 24 18 } //02 00 
		$a_00_5 = {83 44 24 1c 04 83 c6 04 eb c8 83 64 24 10 00 83 7c 24 10 00 74 0d 83 c7 14 } //02 00 
		$a_00_6 = {18 02 52 65 61 64 46 69 6c 65 00 00 12 01 47 65 } //9c ff 
		$a_00_7 = {70 64 66 73 64 6b 63 6f 6d 2e 44 4c 4c } //9c ff  pdfsdkcom.DLL
		$a_00_8 = {2e 76 69 76 69 64 61 73 2e 63 6f 6d 2f 70 6c 61 79 65 72 } //fb ff  .vividas.com/player
		$a_00_9 = {4f 43 58 50 4c 41 59 2e 56 50 6c 61 79 65 72 50 72 6f 70 50 61 67 65 2e 31 } //9c ff  OCXPLAY.VPlayerPropPage.1
		$a_00_10 = {56 65 72 79 50 44 46 } //9c ff  VeryPDF
		$a_00_11 = {00 6d 61 78 74 68 6f 6e 5f 70 72 65 66 2e 64 6c 6c 00 } //9c ff 
		$a_00_12 = {00 67 65 74 5f 6d 61 78 74 68 6f 6e 5f 68 6f 6d 65 70 61 67 65 00 } //9c ff  最瑥浟硡桴湯桟浯灥条e
		$a_00_13 = {00 73 65 74 5f 6d 61 78 74 68 6f 6e 33 5f 66 61 76 6f 72 69 74 65 73 00 } //9c ff  猀瑥浟硡桴湯弳慦潶楲整s
		$a_00_14 = {00 73 65 74 5f 6d 61 78 74 68 6f 6e 35 5f 66 61 76 6f 72 69 74 65 73 00 } //9c ff  猀瑥浟硡桴湯張慦潶楲整s
		$a_00_15 = {00 73 65 74 5f 77 6e 69 65 5f 66 61 76 6f 72 69 74 65 73 00 } //00 00  猀瑥睟楮彥慦潶楲整s
	condition:
		any of ($a_*)
 
}