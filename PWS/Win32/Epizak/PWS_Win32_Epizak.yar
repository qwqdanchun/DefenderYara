
rule PWS_Win32_Epizak{
	meta:
		description = "PWS:Win32/Epizak,SIGNATURE_TYPE_PEHSTR_EXT,11 00 10 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {69 00 76 00 77 00 74 00 3f 00 29 00 28 00 } //05 00  ivwt?)(
		$a_00_1 = {55 00 73 00 65 00 72 00 20 00 4e 00 61 00 6d 00 65 00 2f 00 56 00 61 00 6c 00 75 00 65 00 } //01 00  User Name/Value
		$a_00_2 = {2f 00 73 00 74 00 65 00 78 00 74 00 20 00 43 00 3a 00 5c 00 78 00 2e 00 74 00 78 00 74 00 } //01 00  /stext C:\x.txt
		$a_00_3 = {6e 00 2e 00 62 00 61 00 74 00 } //0a 00  n.bat
		$a_03_4 = {66 33 45 d0 0f bf d0 52 ff 15 90 01 04 8b d0 8d 4d c8 ff 15 90 01 04 50 ff 15 90 01 04 8b d0 8d 4d d4 ff 15 90 00 } //0a 00 
		$a_03_5 = {66 33 45 d0 0f bf c0 50 e8 90 01 04 8b d0 8d 4d c8 e8 90 01 04 50 e8 90 01 04 8b d0 8d 4d d4 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}