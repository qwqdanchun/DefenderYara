
rule Trojan_Win32_DiskFreeze_A_sys{
	meta:
		description = "Trojan:Win32/DiskFreeze.A!sys,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {0f 8c a2 00 00 00 83 45 ec 01 83 55 f0 00 33 c0 39 45 f0 72 d3 77 08 8b 45 08 39 45 ec 72 c9 } //01 00 
		$a_01_1 = {81 7f 0c 20 00 07 00 0f 85 2a 01 00 00 83 7f 04 58 73 0b 83 63 1c 00 be 23 00 00 c0 eb 0f } //01 00 
		$a_01_2 = {21 21 21 21 21 21 21 21 21 21 52 65 61 64 20 4f 72 20 57 72 69 74 65 20 48 44 20 45 72 72 6f 72 20 43 6f 64 65 3d 3d 3d 3d 30 78 25 78 0a } //01 00 
		$a_01_3 = {66 75 63 6b 20 72 65 61 64 20 25 64 0a } //00 00 
	condition:
		any of ($a_*)
 
}