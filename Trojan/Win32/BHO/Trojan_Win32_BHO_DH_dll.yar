
rule Trojan_Win32_BHO_DH_dll{
	meta:
		description = "Trojan:Win32/BHO.DH!dll,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 72 65 6c 61 74 69 6f 6e 5f 62 61 72 2e 61 73 70 3f 6b 3d 25 73 26 69 64 3d 25 73 26 6d 3d 25 73 } //01 00  /relation_bar.asp?k=%s&id=%s&m=%s
		$a_01_1 = {74 6f 70 67 75 69 64 65 2e 63 6f 2e 6b 72 2f 75 70 64 61 74 65 2f } //01 00  topguide.co.kr/update/
		$a_01_2 = {7b 31 45 44 36 35 43 38 38 2d 31 32 35 39 2d 34 38 34 42 2d 41 39 46 41 2d 36 37 33 31 45 30 44 31 35 37 34 33 7d } //01 00  {1ED65C88-1259-484B-A9FA-6731E0D15743}
		$a_01_3 = {7b 37 44 31 41 46 44 34 34 2d 42 45 41 36 2d 34 38 42 44 2d 38 38 37 32 2d 32 31 39 34 30 44 33 38 35 43 33 42 7d } //00 00  {7D1AFD44-BEA6-48BD-8872-21940D385C3B}
	condition:
		any of ($a_*)
 
}