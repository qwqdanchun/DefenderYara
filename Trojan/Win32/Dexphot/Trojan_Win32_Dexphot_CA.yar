
rule Trojan_Win32_Dexphot_CA{
	meta:
		description = "Trojan:Win32/Dexphot.CA,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {2e 00 65 00 78 00 65 00 20 00 90 02 20 70 00 61 00 63 00 6b 00 61 00 67 00 65 00 90 02 10 68 00 74 00 74 00 70 00 90 00 } //01 00 
		$a_02_1 = {2e 00 65 00 78 00 65 00 22 00 20 00 90 02 20 70 00 61 00 63 00 6b 00 61 00 67 00 65 00 90 02 10 68 00 74 00 74 00 70 00 90 00 } //ff ff 
		$a_00_2 = {74 00 61 00 73 00 6b 00 68 00 6f 00 73 00 74 00 77 00 2e 00 65 00 78 00 65 00 } //01 00  taskhostw.exe
	condition:
		any of ($a_*)
 
}