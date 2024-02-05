
rule PWS_Win32_Qqfo_A{
	meta:
		description = "PWS:Win32/Qqfo.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 e1 03 50 68 90 01 02 40 00 6a 65 f3 a4 e8 90 01 04 83 c4 0c 85 c0 0f 84 90 01 02 00 00 68 f4 01 00 00 ff 15 90 01 02 40 00 90 00 } //01 00 
		$a_03_1 = {6a 00 6a 01 f3 a4 6a 00 ff 15 90 01 02 40 00 85 db 8b f0 74 07 68 40 e2 01 00 ff d3 68 30 75 00 00 56 ff 15 90 01 02 40 00 90 00 } //01 00 
		$a_00_2 = {65 6c 65 6d 65 6e 74 63 6c 69 65 6e 74 2e 65 78 65 00 00 00 7a 78 } //00 00 
	condition:
		any of ($a_*)
 
}