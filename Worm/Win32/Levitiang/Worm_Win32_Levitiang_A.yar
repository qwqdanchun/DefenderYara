
rule Worm_Win32_Levitiang_A{
	meta:
		description = "Worm:Win32/Levitiang.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 70 72 65 61 64 45 6d 75 6c 65 00 } //01 00  灓敲摡浅汵e
		$a_01_1 = {53 70 72 65 61 64 41 72 65 73 00 } //01 00 
		$a_01_2 = {61 63 74 69 6f 6e 3d 41 62 72 69 72 20 63 61 72 70 65 74 61 20 70 61 72 61 20 76 65 72 20 61 72 63 68 69 76 6f 73 } //01 00  action=Abrir carpeta para ver archivos
		$a_01_3 = {76 69 67 69 6c 61 6e 74 65 73 70 72 65 61 64 } //01 00  vigilantespread
		$a_01_4 = {31 32 37 2e 30 2e 30 2e 31 20 6d 69 63 72 6f 73 6f 66 74 2e 63 6f 6d } //01 00  127.0.0.1 microsoft.com
		$a_01_5 = {4d 73 63 6f 6e 66 69 67 6b 69 6c 6c 65 72 } //01 00  Msconfigkiller
		$a_01_6 = {65 00 78 00 65 00 2e 00 70 00 75 00 74 00 65 00 73 00 5c 00 3a 00 } //01 00  exe.putes\:
		$a_01_7 = {5c 00 64 00 6f 00 77 00 6e 00 6d 00 65 00 6c 00 74 00 2e 00 65 00 78 00 65 00 } //00 00  \downmelt.exe
	condition:
		any of ($a_*)
 
}