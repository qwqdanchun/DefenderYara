
rule Trojan_Win32_Phorpiex_AF_MTB{
	meta:
		description = "Trojan:Win32/Phorpiex.AF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 03 00 "
		
	strings :
		$a_01_0 = {31 00 38 00 35 00 2e 00 32 00 31 00 35 00 2e 00 31 00 31 00 33 00 2e 00 36 00 36 00 2f 00 74 00 70 00 65 00 69 00 6e 00 66 00 2e 00 70 00 68 00 70 00 } //01 00  185.215.113.66/tpeinf.php
		$a_01_1 = {33 00 66 00 36 00 64 00 36 00 33 00 36 00 66 00 33 00 64 00 36 00 33 00 66 00 64 00 66 00 36 00 64 00 66 00 36 00 64 00 64 00 66 00 36 00 33 00 66 00 36 00 66 00 36 00 33 00 64 00 66 00 } //01 00  3f6d636f3d63fdf6df6ddf63f6f63df
		$a_01_2 = {77 00 34 00 74 00 77 00 34 00 74 00 77 00 34 00 79 00 34 00 79 00 77 00 34 00 79 00 77 00 34 00 74 00 34 00 74 00 77 00 34 00 74 00 34 00 77 00 79 00 77 00 74 00 34 00 77 00 77 00 34 00 } //01 00  w4tw4tw4y4yw4yw4t4tw4t4wywt4ww4
		$a_01_3 = {61 37 66 66 37 61 37 66 37 61 37 66 2e 6b 65 } //01 00  a7ff7a7f7a7f.ke
		$a_01_4 = {61 00 66 00 65 00 36 00 66 00 67 00 61 00 36 00 65 00 67 00 61 00 65 00 64 00 67 00 38 00 61 00 65 00 67 00 36 00 61 00 38 00 65 00 36 00 66 00 67 00 36 00 61 00 66 00 38 00 67 00 61 00 } //00 00  afe6fga6egaedg8aeg6a8e6fg6af8ga
	condition:
		any of ($a_*)
 
}