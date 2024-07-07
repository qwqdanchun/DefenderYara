
rule Ransom_Win32_Milicry_C_bit{
	meta:
		description = "Ransom:Win32/Milicry.C!bit,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 06 00 00 "
		
	strings :
		$a_01_0 = {25 73 5c 21 48 45 4c 50 5f 53 4f 53 2e 68 74 61 } //1 %s\!HELP_SOS.hta
		$a_01_1 = {64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 20 00 76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //1 delete shadows /all /quiet vssadmin.exe
		$a_01_2 = {74 00 68 00 75 00 6d 00 62 00 73 00 2e 00 64 00 62 00 7c 00 64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 2e 00 69 00 6e 00 69 00 7c 00 6e 00 74 00 75 00 73 00 65 00 72 00 2e 00 64 00 61 00 74 00 7c 00 } //1 thumbs.db|desktop.ini|ntuser.dat|
		$a_01_3 = {73 00 61 00 67 00 65 00 2e 00 6e 00 6f 00 74 00 69 00 63 00 65 00 } //10 sage.notice
		$a_01_4 = {65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 53 00 41 00 47 00 45 00 } //10 encrypted by SAGE
		$a_01_5 = {6d 62 66 63 65 32 34 72 67 6e 36 35 62 78 33 67 } //10 mbfce24rgn65bx3g
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10) >=22
 
}