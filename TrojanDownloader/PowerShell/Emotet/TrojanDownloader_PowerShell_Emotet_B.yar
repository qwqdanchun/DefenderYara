
rule TrojanDownloader_PowerShell_Emotet_B{
	meta:
		description = "TrojanDownloader:PowerShell/Emotet.B,SIGNATURE_TYPE_CMDHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_80_0 = {70 6f 77 65 72 73 68 65 6c 6c } //powershell  01 00 
		$a_80_1 = {68 74 74 70 } //http  01 00 
		$a_80_2 = {66 6f 72 65 61 63 68 } //foreach  01 00 
		$a_80_3 = {69 6e 76 6f 6b 65 2d 77 65 62 72 65 71 75 65 73 74 } //invoke-webrequest  01 00 
		$a_80_4 = {72 75 6e 64 6c 6c 33 32 } //rundll32  01 00 
		$a_80_5 = {73 74 61 72 74 2d 70 72 6f 63 65 73 73 } //start-process  01 00 
		$a_80_6 = {69 65 78 20 } //iex   00 00 
	condition:
		any of ($a_*)
 
}