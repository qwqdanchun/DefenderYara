
rule Trojan_Win32_Adclicker_AU{
	meta:
		description = "Trojan:Win32/Adclicker.AU,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 72 65 67 2e 70 68 70 3f } //01 00  /reg.php?
		$a_00_1 = {70 6f 70 75 70 5c 72 65 6c 65 61 73 65 5c 70 6f 70 75 70 2e 70 64 62 } //01 00  popup\release\popup.pdb
		$a_00_2 = {73 76 63 68 6f 73 74 2e 65 78 65 } //01 00  svchost.exe
		$a_02_3 = {b8 64 20 00 00 e8 46 fe ff ff a1 90 01 04 33 c4 89 84 24 5c 20 00 00 68 00 10 00 00 8d 44 24 5c 6a 00 50 e8 90 01 04 68 90 01 04 8d 4c 24 68 68 00 10 00 00 51 e8 90 01 04 83 c4 18 68 00 10 00 00 8d 94 24 5c 10 00 00 52 8d 44 24 60 50 ff 15 90 01 04 68 90 01 04 8d 8c 24 5c 10 00 00 51 68 90 01 04 8d 54 24 64 68 00 10 00 00 52 e8 90 01 04 6a 44 8d 44 24 28 6a 00 50 e8 90 01 04 83 c4 20 8d 0c 24 51 8d 54 24 14 52 6a 00 6a 00 6a 20 90 00 } //01 00 
		$a_02_4 = {33 c0 50 50 6a 03 50 6a 03 68 00 00 00 40 68 90 01 04 ff 15 90 01 04 a3 90 01 04 c3 a1 90 01 04 83 f8 ff 56 8b 35 90 01 04 74 08 83 f8 fe 74 03 50 ff d6 a1 90 01 04 83 f8 ff 74 08 83 f8 fe 74 03 50 ff d6 5e c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}