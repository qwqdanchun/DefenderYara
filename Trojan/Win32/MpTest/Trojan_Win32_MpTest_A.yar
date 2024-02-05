
rule Trojan_Win32_MpTest_A{
	meta:
		description = "Trojan:Win32/MpTest.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {34 65 38 36 65 37 31 39 2d 35 39 33 39 2d 34 65 61 38 2d 38 66 34 36 2d 63 39 66 31 35 63 38 63 63 62 30 64 } //01 00 
		$a_01_1 = {66 32 66 30 30 62 62 64 2d 63 32 32 31 2d 34 66 66 62 2d 62 39 36 36 2d 65 63 38 37 34 32 62 37 31 64 39 66 } //01 00 
		$a_01_2 = {30 61 38 33 64 37 66 33 2d 32 33 37 31 2d 34 32 64 63 2d 62 30 61 31 2d 66 31 64 39 31 62 65 37 65 35 38 62 } //01 00 
		$a_01_3 = {30 63 36 32 66 33 35 61 2d 33 33 61 34 2d 34 39 35 65 2d 61 34 66 65 2d 39 39 38 64 61 63 33 31 34 36 61 62 } //01 00 
		$a_01_4 = {61 62 65 64 64 61 34 35 2d 35 31 38 34 2d 34 65 30 31 2d 39 64 64 33 2d 38 33 36 35 63 34 36 39 65 63 34 33 } //00 00 
	condition:
		any of ($a_*)
 
}