
rule Trojan_Win32_BlackMoon_DX_MTB{
	meta:
		description = "Trojan:Win32/BlackMoon.DX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 38 20 41 42 20 41 41 20 41 41 20 32 41 20 46 37 20 45 39 20 44 31 20 46 41 20 38 42 20 43 41 20 43 31 20 45 39 20 31 46 20 30 33 20 43 41 20 33 33 20 44 42 20 38 35 20 43 39 20 37 45 20 36 46 20 33 33 20 } //01 00 
		$a_01_1 = {38 42 20 34 43 20 32 34 20 30 34 20 32 42 20 44 30 20 43 31 20 46 41 20 30 32 20 33 42 20 43 41 20 37 33 20 30 34 20 38 42 20 30 34 20 38 38 20 43 33 20 33 33 20 43 30 20 43 33 20 43 43 } //01 00 
		$a_01_2 = {38 44 20 35 34 20 32 34 20 30 38 20 35 32 20 38 39 20 34 34 20 32 34 20 30 43 20 38 44 20 34 34 20 32 34 20 31 34 20 35 30 } //01 00 
		$a_01_3 = {35 31 20 35 36 20 38 42 20 46 31 20 33 33 20 43 30 20 38 39 20 37 34 20 32 34 20 30 34 20 38 38 20 34 36 20 30 34 20 38 39 20 34 36 20 30 38 20 38 44 20 34 45 20 30 43 } //01 00 
		$a_01_4 = {38 39 20 34 34 20 32 34 20 31 34 20 38 39 20 35 43 20 32 34 20 34 34 20 38 39 20 35 43 20 32 34 20 34 38 20 38 39 20 35 43 20 32 34 20 34 43 } //01 00 
		$a_01_5 = {38 35 20 43 39 20 37 34 20 30 35 20 38 42 20 30 31 20 46 46 20 36 30 20 32 34 20 33 32 20 43 30 } //01 00 
		$a_01_6 = {44 49 4e 47 50 41 44 44 49 4e 47 58 58 50 41 44 44 49 4e 47 50 41 44 44 49 4e 47 58 58 50 41 44 44 49 4e 47 6b 68 79 } //00 00 
	condition:
		any of ($a_*)
 
}