
rule Worm_Win32_Paiteyello_A{
	meta:
		description = "Worm:Win32/Paiteyello.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2e 00 4a 00 50 00 47 00 2e 00 65 00 78 00 65 00 } //1 .JPG.exe
		$a_01_1 = {59 00 61 00 68 00 6f 00 6f 00 4d 00 65 00 73 00 73 00 65 00 6e 00 67 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //1 YahooMessenger.exe
		$a_01_2 = {47 65 74 44 72 69 76 65 54 79 70 65 41 } //1 GetDriveTypeA
		$a_03_3 = {52 00 65 00 6d 00 6f 00 76 00 61 00 62 00 6c 00 65 00 20 00 44 00 72 00 69 00 76 00 65 00 90 01 12 2d 00 20 00 46 00 69 00 78 00 65 00 64 00 20 00 44 00 72 00 69 00 76 00 65 00 90 01 0a 2d 00 20 00 52 00 65 00 6d 00 6f 00 74 00 65 00 20 00 44 00 72 00 69 00 76 00 65 00 90 01 08 2d 00 20 00 43 00 44 00 2d 00 52 00 4f 00 4d 00 20 00 44 00 72 00 69 00 76 00 65 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}