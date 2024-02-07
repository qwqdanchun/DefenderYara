
rule Trojan_Win32_Redline_JK_MTB{
	meta:
		description = "Trojan:Win32/Redline.JK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {31 c0 8d 74 26 00 89 c2 83 e2 03 0f b6 92 20 b6 48 00 30 90 20 c8 43 00 83 c0 01 3d 00 ee 04 00 75 e4 } //0a 00 
		$a_03_1 = {89 de 83 c3 01 89 5c 24 04 c7 04 24 00 e0 52 00 e8 90 01 04 83 e6 03 0f b6 86 90 01 04 30 83 90 01 04 81 fb 7e 07 00 00 90 00 } //01 00 
		$a_01_2 = {5c 53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 5c 50 72 6f 64 75 63 74 2e 65 78 65 } //01 00  \Start Menu\Programs\Startup\Product.exe
		$a_01_3 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00  VirtualProtect
		$a_03_4 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 90 02 20 5c 00 41 00 70 00 70 00 4c 00 61 00 75 00 6e 00 63 00 68 00 2e 00 65 00 78 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}