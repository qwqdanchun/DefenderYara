
rule Trojan_Win32_Dexphot_P{
	meta:
		description = "Trojan:Win32/Dexphot.P,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 00 48 00 65 00 61 00 64 00 65 00 72 00 73 00 5b 00 27 00 55 00 73 00 65 00 72 00 2d 00 41 00 67 00 65 00 6e 00 74 00 27 00 5d 00 20 00 3d 00 20 00 27 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 72 00 27 00 } //01 00  .Headers['User-Agent'] = 'Windows Installer'
		$a_00_1 = {2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 28 00 27 00 68 00 74 00 74 00 70 00 } //01 00  .DownloadFile('http
		$a_00_2 = {2e 00 69 00 6e 00 66 00 6f 00 2f 00 } //01 00  .info/
		$a_00_3 = {5c 00 64 00 75 00 6d 00 70 00 30 00 30 00 37 00 2e 00 64 00 61 00 74 00 } //00 00  \dump007.dat
	condition:
		any of ($a_*)
 
}