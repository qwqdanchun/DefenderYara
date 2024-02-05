
rule Trojan_Win32_Matcash_gen_J{
	meta:
		description = "Trojan:Win32/Matcash.gen!J,SIGNATURE_TYPE_PEHSTR,0d 00 0b 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {c6 45 98 33 c7 45 9c 03 00 00 00 c6 45 a0 34 c7 45 a4 04 00 00 00 c6 45 a8 35 c7 45 ac 05 00 00 00 c6 45 b0 36 c7 45 b4 06 00 00 00 c6 45 b8 37 c7 45 bc 07 00 00 00 c6 45 c0 38 c7 45 c4 08 00 00 00 c6 45 c8 39 c7 45 cc 09 00 00 00 c6 45 d0 41 c7 45 d4 0a 00 00 00 c6 45 d8 42 c7 45 dc 0b 00 00 00 c6 45 e0 43 c7 45 e4 0c 00 00 00 c6 45 e8 44 c7 45 ec 0d 00 00 00 c6 45 f0 45 c7 45 f4 0e 00 00 00 c6 45 f8 46 c7 45 fc 0f 00 00 00 } //01 00 
		$a_01_1 = {30 42 41 37 35 35 42 36 38 30 44 44 37 37 35 36 34 31 43 37 36 37 31 35 32 37 38 31 34 30 42 44 39 36 44 46 37 37 } //01 00 
		$a_01_2 = {30 42 41 37 35 35 42 36 38 30 44 44 37 37 35 36 35 30 43 45 36 39 30 32 30 34 41 30 34 44 42 36 } //01 00 
		$a_01_3 = {33 35 41 30 34 46 42 41 39 43 44 36 36 36 30 43 36 36 43 37 36 34 } //00 00 
	condition:
		any of ($a_*)
 
}