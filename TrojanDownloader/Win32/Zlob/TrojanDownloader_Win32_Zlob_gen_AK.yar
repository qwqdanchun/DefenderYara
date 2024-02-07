
rule TrojanDownloader_Win32_Zlob_gen_AK{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!AK,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_00_0 = {7b 00 25 00 30 00 38 00 6c 00 58 00 2d 00 25 00 30 00 34 00 58 00 2d 00 25 00 30 00 34 00 58 00 2d 00 25 00 30 00 32 00 58 00 25 00 30 00 32 00 58 00 2d 00 25 00 30 00 32 00 58 00 25 00 30 00 32 00 58 00 25 00 30 00 32 00 58 00 25 00 30 00 32 00 58 00 25 00 30 00 32 00 58 00 25 00 30 00 32 00 58 00 7d 00 } //01 00  {%08lX-%04X-%04X-%02X%02X-%02X%02X%02X%02X%02X%02X}
		$a_01_1 = {4e 65 77 4d 65 64 69 61 43 6f 64 65 63 50 72 6f 70 50 61 67 65 } //01 00  NewMediaCodecPropPage
		$a_01_2 = {43 4e 65 77 4d 65 64 69 61 43 6f 64 65 63 43 74 72 6c } //01 00  CNewMediaCodecCtrl
		$a_01_3 = {46 61 63 74 6f 72 79 40 43 4e 65 77 4d 65 64 69 61 43 6f 64 65 63 } //01 00  Factory@CNewMediaCodec
		$a_00_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Policies\Explorer
		$a_00_5 = {46 00 6f 00 72 00 63 00 65 00 52 00 65 00 6d 00 6f 00 76 00 65 00 } //01 00  ForceRemove
		$a_00_6 = {43 00 4c 00 53 00 49 00 44 00 5c 00 25 00 31 00 5c 00 49 00 6e 00 50 00 72 00 6f 00 63 00 53 00 65 00 72 00 76 00 65 00 72 00 33 00 32 00 } //01 00  CLSID\%1\InProcServer32
		$a_00_7 = {52 00 65 00 73 00 74 00 72 00 69 00 63 00 74 00 52 00 75 00 6e 00 } //01 00  RestrictRun
		$a_00_8 = {30 00 34 00 30 00 39 00 30 00 34 00 65 00 34 00 } //01 00  040904e4
		$a_00_9 = {4d 00 65 00 64 00 69 00 61 00 45 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 2e 00 6f 00 63 00 78 00 } //01 00  MediaExtension.ocx
		$a_01_10 = {52 65 67 43 72 65 61 74 65 4b 65 79 } //00 00  RegCreateKey
	condition:
		any of ($a_*)
 
}