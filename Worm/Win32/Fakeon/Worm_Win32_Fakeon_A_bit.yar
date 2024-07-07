
rule Worm_Win32_Fakeon_A_bit{
	meta:
		description = "Worm:Win32/Fakeon.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_02_0 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 90 01 08 2e 00 65 00 78 00 65 00 90 00 } //2
		$a_00_1 = {31 00 73 00 61 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //2 1sass.exe
		$a_00_2 = {4e 00 65 00 77 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //2 New Folder.exe
		$a_00_3 = {48 00 69 00 64 00 65 00 46 00 69 00 6c 00 65 00 45 00 78 00 74 00 } //1 HideFileExt
		$a_00_4 = {48 00 69 00 64 00 65 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //1 Hideprocess
		$a_00_5 = {41 00 75 00 74 00 6f 00 72 00 20 00 44 00 61 00 76 00 69 00 64 00 20 00 46 00 61 00 72 00 6a 00 69 00 20 00 2d 00 20 00 43 00 6f 00 6e 00 63 00 65 00 70 00 74 00 6f 00 20 00 32 00 30 00 31 00 } //-100 Autor David Farji - Concepto 201
	condition:
		((#a_02_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*-100) >=6
 
}