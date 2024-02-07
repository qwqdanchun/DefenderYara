
rule Trojan_Win32_Remcos_ME_MTB{
	meta:
		description = "Trojan:Win32/Remcos.ME!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 75 63 6b 20 48 75 6e 74 20 44 65 6c 70 68 69 } //01 00  Duck Hunt Delphi
		$a_01_1 = {54 44 75 63 6b 46 6f 72 6d } //01 00  TDuckForm
		$a_01_2 = {44 65 6c 70 68 69 20 44 75 63 6b 20 48 75 6e 74 } //01 00  Delphi Duck Hunt
		$a_01_3 = {4d 45 44 49 41 5c 47 46 58 5c 4c 69 74 74 6c 65 44 75 63 6b 2e 62 6d 70 } //01 00  MEDIA\GFX\LittleDuck.bmp
		$a_01_4 = {4d 45 44 49 41 5c 47 46 58 5c 47 61 75 67 65 4b 69 6c 6c 2e 62 6d 70 } //01 00  MEDIA\GFX\GaugeKill.bmp
		$a_01_5 = {47 65 74 4b 65 79 62 6f 61 72 64 54 79 70 65 } //01 00  GetKeyboardType
		$a_01_6 = {44 75 63 6b 48 75 6e 74 } //01 00  DuckHunt
		$a_01_7 = {41 64 64 4d 49 4d 45 46 69 6c 65 54 79 70 65 73 50 53 } //01 00  AddMIMEFileTypesPS
		$a_01_8 = {2e 69 74 65 78 74 } //00 00  .itext
	condition:
		any of ($a_*)
 
}