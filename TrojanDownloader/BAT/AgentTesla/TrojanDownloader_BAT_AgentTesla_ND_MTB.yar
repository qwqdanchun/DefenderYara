
rule TrojanDownloader_BAT_AgentTesla_ND_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.ND!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 70 64 52 65 61 64 65 72 57 72 69 74 65 72 47 75 69 4c 6f 61 64 65 72 } //01 00  SpdReaderWriterGuiLoader
		$a_01_1 = {73 70 64 72 77 67 75 69 6c 64 72 } //01 00  spdrwguildr
		$a_01_2 = {47 7a 69 70 4d 65 74 68 6f 64 } //01 00  GzipMethod
		$a_01_3 = {24 38 38 65 31 34 65 32 31 2d 30 61 64 65 2d 34 36 30 61 2d 39 63 62 37 2d 36 33 32 35 35 66 31 63 34 30 37 38 } //01 00  $88e14e21-0ade-460a-9cb7-63255f1c4078
		$a_01_4 = {67 65 74 5f 73 70 64 72 77 67 75 69 5f 65 78 65 } //01 00  get_spdrwgui_exe
		$a_01_5 = {41 32 31 33 4d } //01 00  A213M
		$a_01_6 = {32 2e 32 32 2e 31 31 2e 31 31 } //00 00  2.22.11.11
	condition:
		any of ($a_*)
 
}