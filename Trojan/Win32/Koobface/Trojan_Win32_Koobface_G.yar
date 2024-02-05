
rule Trojan_Win32_Koobface_G{
	meta:
		description = "Trojan:Win32/Koobface.G,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {33 db 53 53 68 97 1f 00 00 e8 } //0a 00 
		$a_00_1 = {50 4f 25 73 2f 71 75 65 25 73 76 3d 25 64 26 75 3d 25 6c 64 26 71 3d 25 73 25 73 54 50 25 73 2e 30 25 73 48 25 73 74 3a 25 63 25 73 25 73 25 73 72 2d 41 25 73 74 3a 20 25 73 25 63 } //01 00 
		$a_00_2 = {72 75 25 73 6c 33 25 73 25 73 22 2c 53 65 25 73 65 4d 61 25 73 69 6e 73 25 73 6c 20 25 73 } //01 00 
		$a_01_3 = {75 0f 47 83 c6 32 3b 7c 24 90 03 01 01 10 14 7c e5 } //01 00 
		$a_00_4 = {73 25 73 65 61 74 25 73 22 25 73 22 20 74 79 25 73 69 6e 74 65 72 25 73 79 70 65 25 73 61 72 65 20 73 74 25 73 3d 20 61 75 74 25 73 6e 70 61 74 25 73 22 25 73 20 2d 6b 20 25 73 22 25 63 } //00 00 
	condition:
		any of ($a_*)
 
}