
rule TrojanClicker_Win32_Erbon_A{
	meta:
		description = "TrojanClicker:Win32/Erbon.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 2a 00 2e 00 74 00 78 00 74 00 } //01 00  \*.txt
		$a_01_1 = {26 00 74 00 69 00 6d 00 65 00 3d 00 } //02 00  &time=
		$a_01_2 = {5c 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 63 00 2e 00 65 00 78 00 65 00 20 00 } //03 00  \servicesc.exe 
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 2e 00 6c 00 37 00 6c 00 37 00 33 00 2e 00 6e 00 65 00 74 00 2e 00 63 00 6e 00 2f 00 74 00 65 00 73 00 74 00 2f 00 65 00 72 00 72 00 2e 00 61 00 73 00 70 00 3f 00 61 00 6c 00 65 00 72 00 72 00 3d 00 73 00 75 00 62 00 3a 00 74 00 69 00 6d 00 65 00 72 00 33 00 5f 00 5f 00 65 00 72 00 72 00 6e 00 62 00 3a 00 } //00 00  http://c.l7l73.net.cn/test/err.asp?alerr=sub:timer3__errnb:
		$a_00_4 = {5d 04 00 00 } //f9 29 
	condition:
		any of ($a_*)
 
}