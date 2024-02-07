
rule TrojanDownloader_Win32_Delflob_F{
	meta:
		description = "TrojanDownloader:Win32/Delflob.F,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {b0 ac ac a8 e2 f7 f7 b5 a1 b5 bd ac b9 ae b1 bc ab f6 bb b7 b5 f7 bc aa ae eb ea f6 bc b9 ac b9 } //01 00 
		$a_00_1 = {2f 64 72 76 33 32 2e 64 61 74 61 } //01 00  /drv32.data
		$a_00_2 = {63 3a 5c 74 6d 70 2e 62 61 74 00 00 6f 70 65 6e } //05 00 
		$a_02_3 = {8d 4d ac b2 d8 b8 90 01 04 e8 90 01 04 ff 75 ac 68 90 01 04 ff 35 90 01 04 68 90 01 04 8d 45 b0 ba 06 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}