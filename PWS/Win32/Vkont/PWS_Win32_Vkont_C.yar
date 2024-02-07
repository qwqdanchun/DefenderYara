
rule PWS_Win32_Vkont_C{
	meta:
		description = "PWS:Win32/Vkont.C,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {61 75 74 6f 72 75 6e } //01 00  autorun
		$a_00_1 = {2e 00 76 00 62 00 70 00 } //01 00  .vbp
		$a_00_2 = {73 00 6f 00 6b 00 65 00 74 00 20 00 45 00 72 00 72 00 6f 00 72 00 } //01 00  soket Error
		$a_00_3 = {5c 00 4c 00 4f 00 47 00 2e 00 54 00 58 00 54 00 } //01 00  \LOG.TXT
		$a_00_4 = {2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 53 00 5a 00 20 00 2f 00 64 00 } //01 00  /t REG_SZ /d
		$a_02_5 = {2e 00 72 00 75 00 2f 00 90 02 04 2e 00 74 00 78 00 74 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}