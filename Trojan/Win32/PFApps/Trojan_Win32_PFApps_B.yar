
rule Trojan_Win32_PFApps_B{
	meta:
		description = "Trojan:Win32/PFApps.B,SIGNATURE_TYPE_CMDHSTR_EXT,0b 00 0b 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //01 00  FromBase64String
		$a_00_1 = {20 00 2d 00 65 00 20 00 } //01 00   -e 
		$a_00_2 = {20 00 2d 00 65 00 6e 00 63 00 20 00 } //0a 00   -enc 
		$a_00_3 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //0a 00  powershell.exe
		$a_00_4 = {70 00 77 00 73 00 68 00 2e 00 65 00 78 00 65 00 } //ff ff  pwsh.exe
		$a_00_5 = {5b 00 47 00 75 00 69 00 64 00 5d 00 28 00 5b 00 43 00 6f 00 6e 00 76 00 65 00 72 00 74 00 5d 00 3a 00 3a 00 46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //00 00  [Guid]([Convert]::FromBase64String
	condition:
		any of ($a_*)
 
}