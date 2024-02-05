
rule Trojan_Win32_Malumpos_A{
	meta:
		description = "Trojan:Win32/Malumpos.A,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {28 62 7c 42 29 5b 30 2d 39 5d 7b 31 33 2c 31 39 7d 5c 5e 5b 41 2d 5a 61 2d 7a 5c 73 5d 7b 30 2c 33 30 7d 5c 2f 5b 41 2d 5a 61 2d 7a 5c 73 5d 7b 30 2c 33 30 7d 5c 5e 28 31 5b 31 2d 39 5d 29 28 28 30 5b 31 2d 39 5d 29 7c 28 31 5b 30 2d 32 5d 29 29 } //01 00 
		$a_01_1 = {5b 33 2d 39 5d 7b 31 7d 5b 30 2d 39 5d 7b 31 34 2c 31 35 7d 5b 44 3d 5d 28 31 5b 31 2d 39 5d 29 28 28 30 5b 31 2d 39 5d 29 7c 28 31 5b 30 2d 32 5d 29 29 5b 30 2d 39 5d 7b 38 2c 33 30 7d 29 00 } //00 00 
	condition:
		any of ($a_*)
 
}