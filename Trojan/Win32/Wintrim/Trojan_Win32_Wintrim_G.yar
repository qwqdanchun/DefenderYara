
rule Trojan_Win32_Wintrim_G{
	meta:
		description = "Trojan:Win32/Wintrim.G,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 79 6d 75 74 73 67 6c 77 6f 72 6b 00 00 00 00 37 30 44 41 36 43 31 37 41 37 34 39 34 43 31 33 } //01 00 
		$a_01_1 = {72 72 6f 72 3d 00 00 00 26 6c 61 73 74 65 72 72 6f 72 3d 00 26 61 64 6d 69 6e 3d 00 26 6f 73 69 } //01 00 
		$a_01_2 = {46 32 5f 00 38 37 34 39 34 61 30 62 61 38 66 38 66 39 34 65 66 64 37 64 65 62 63 61 66 39 31 38 } //00 00  ㉆_㜸㤴愴戰㡡㡦㥦攴摦搷扥慣㥦㠱
	condition:
		any of ($a_*)
 
}