
rule Worm_Win32_Vercuser_A{
	meta:
		description = "Worm:Win32/Vercuser.A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffd2 00 ffffffa0 00 0e 00 00 32 00 "
		
	strings :
		$a_01_0 = {68 32 73 28 22 35 42 36 31 37 35 37 34 36 46 37 32 37 35 36 45 35 44 30 41 35 35 37 33 36 35 34 31 37 35 37 34 36 46 35 30 36 43 36 31 37 39 33 44 33 31 } //32 00 
		$a_01_1 = {36 35 37 38 36 35 36 33 37 35 37 34 36 35 33 44 35 35 35 33 34 32 35 43 34 34 36 31 37 34 36 31 35 43 35 33 36 35 36 33 37 35 37 32 36 35 34 34 37 32 36 39 37 36 36 35 32 45 36 35 37 38 36 35 32 30 } //32 00 
		$a_01_2 = {36 38 36 62 33 37 30 34 37 65 35 30 36 61 30 30 65 38 35 65 66 35 66 66 66 66 36 61 30 30 36 61 30 30 66 66 64 30 38 38 38 35 33 33 66 39 66 66 66 66 36 38 30 65 30 33 65 35 65 36 } //32 00 
		$a_01_3 = {66 66 33 37 66 66 62 36 63 33 30 61 30 30 30 30 35 30 66 66 39 36 64 64 30 30 30 30 30 30 30 66 62 37 35 37 30 34 38 39 30 34 33 32 38 33 63 37 30 36 65 62 65 30 36 38 38 66 64 38 61 34 62 62 } //0a 00 
		$a_01_4 = {68 32 73 28 22 36 33 36 46 36 45 36 45 36 35 36 42 37 34 36 44 36 35 32 45 36 38 36 46 37 30 37 34 36 46 32 45 36 46 37 32 36 37 33 41 33 37 33 35 33 33 33 39 37 43 36 33 36 46 36 45 36 45 } //0a 00 
		$a_01_5 = {36 37 37 33 36 35 37 32 37 36 36 35 37 32 36 38 36 46 37 33 37 34 32 45 36 44 37 39 36 36 37 34 37 30 32 45 36 46 37 32 36 37 33 41 33 35 33 35 33 35 33 35 37 43 36 37 37 33 36 35 37 32 37 36 } //0a 00 
		$a_01_6 = {61 73 64 2e 65 78 65 2c 5c 61 64 77 61 72 65 5f 70 72 6f 2e 65 78 65 2c 5c 61 6b 6d } //0a 00 
		$a_01_7 = {7e 74 65 6d 70 7e 63 6c 65 61 72 7e 5b 30 2d 39 5d 7b 35 7d 5c 2e 65 78 65 24 22 29 } //0a 00 
		$a_01_8 = {55 00 53 00 42 00 5c 00 44 00 61 00 74 00 61 00 5c 00 53 00 65 00 63 00 75 00 72 00 65 00 44 00 72 00 69 00 76 00 65 00 2e 00 65 00 78 00 65 00 } //0a 00 
		$a_01_9 = {50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 00 00 00 00 2c 00 00 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 41 00 75 00 74 00 6f 00 44 00 72 00 69 00 76 00 65 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_10 = {46 45 44 32 41 45 44 46 38 34 37 31 30 34 38 36 34 30 42 37 38 30 42 41 41 43 36 39 30 46 37 38 } //05 00 
		$a_01_11 = {44 30 42 39 31 34 30 37 34 33 36 36 39 38 30 45 43 32 36 44 37 36 42 30 33 32 37 38 34 45 35 30 } //05 00 
		$a_01_12 = {7a 69 6e 61 70 73 37 2e 65 78 65 2c 5c 7e 2e 65 78 65 2c 61 6e 74 69 76 69 72 75 73 5c 74 72 65 61 76 2e 65 78 65 } //05 00 
		$a_01_13 = {25 54 73 44 76 25 5c 50 61 73 73 77 6f 72 64 73 2e 65 78 65 } //00 00 
		$a_00_14 = {80 10 00 00 9c } //ce 52 
	condition:
		any of ($a_*)
 
}