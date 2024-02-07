
rule Trojan_Win32_Shelsy_B_MTB{
	meta:
		description = "Trojan:Win32/Shelsy.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 00 65 00 67 00 70 00 75 00 6c 00 6c 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  Legpuller.exe
		$a_01_1 = {63 00 6f 00 63 00 68 00 61 00 69 00 72 00 69 00 6e 00 67 00 2e 00 69 00 6e 00 69 00 } //01 00  cochairing.ini
		$a_01_2 = {75 00 6e 00 73 00 6b 00 65 00 6c 00 69 00 67 00 68 00 65 00 64 00 65 00 6e 00 73 00 2e 00 69 00 6e 00 69 00 } //01 00  unskelighedens.ini
		$a_01_3 = {44 00 65 00 73 00 65 00 72 00 74 00 72 00 65 00 72 00 31 00 33 00 33 00 } //01 00  Desertrer133
		$a_01_4 = {52 00 65 00 6b 00 6c 00 61 00 6d 00 65 00 6d 00 61 00 67 00 65 00 72 00 73 00 31 00 32 00 35 00 2e 00 65 00 78 00 65 00 } //01 00  Reklamemagers125.exe
		$a_01_5 = {43 00 3a 00 5c 00 54 00 45 00 4d 00 50 00 5c 00 47 00 61 00 61 00 72 00 64 00 6d 00 61 00 6e 00 64 00 2e 00 71 00 75 00 69 00 } //00 00  C:\TEMP\Gaardmand.qui
	condition:
		any of ($a_*)
 
}