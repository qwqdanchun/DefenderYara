
rule Trojan_Win32_Filisto_B_dha{
	meta:
		description = "Trojan:Win32/Filisto.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 15 00 00 01 00 "
		
	strings :
		$a_01_0 = {7b 41 38 37 32 36 33 38 44 2d 44 43 32 42 39 42 32 33 7d } //01 00 
		$a_01_1 = {7b 37 38 38 31 31 43 37 42 2d 41 43 33 41 38 32 30 31 7d } //01 00 
		$a_01_2 = {7b 49 4f 34 41 39 31 32 58 2d 43 49 59 34 33 56 57 52 7d } //01 00 
		$a_01_3 = {7b 00 37 00 33 00 41 00 42 00 44 00 43 00 33 00 44 00 2d 00 37 00 41 00 33 00 30 00 2d 00 34 00 32 00 35 00 42 00 2d 00 41 00 39 00 33 00 44 00 2d 00 39 00 42 00 31 00 43 00 38 00 31 00 34 00 41 00 45 00 43 00 39 00 41 00 7d 00 } //01 00 
		$a_01_4 = {7b 42 30 36 45 31 31 41 44 2d 37 31 36 45 33 33 32 41 7d } //01 00 
		$a_01_5 = {7b 32 36 34 33 42 33 32 43 2d 39 37 31 38 2d 34 34 42 36 2d 42 38 31 34 2d 33 38 31 42 41 36 46 32 39 42 41 43 7d } //01 00 
		$a_01_6 = {7b 42 36 45 35 36 46 30 43 2d 46 31 42 37 35 42 37 46 7d } //01 00 
		$a_01_7 = {7b 42 36 36 32 37 30 46 30 2d 47 4a 48 47 48 42 32 33 7d } //01 00 
		$a_01_8 = {7b 43 42 44 42 31 31 39 43 2d 43 35 37 37 2d 34 39 32 38 2d 39 39 44 34 2d 46 31 32 45 39 37 43 33 41 30 39 32 7d } //01 00 
		$a_01_9 = {7b 36 42 34 34 45 32 39 44 2d 44 43 43 32 34 30 33 43 7d } //01 00 
		$a_01_10 = {7b 44 44 43 36 34 30 37 32 2d 43 46 37 39 34 34 38 36 7d } //01 00 
		$a_01_11 = {7b 42 36 36 32 37 30 46 30 2d 43 41 44 43 42 45 38 35 7d } //01 00 
		$a_01_12 = {7b 00 34 00 38 00 44 00 34 00 41 00 36 00 30 00 36 00 2d 00 33 00 31 00 43 00 34 00 2d 00 34 00 45 00 35 00 41 00 2d 00 39 00 30 00 30 00 33 00 2d 00 32 00 31 00 46 00 30 00 43 00 46 00 39 00 42 00 36 00 43 00 32 00 39 00 7d 00 } //01 00 
		$a_01_13 = {7b 39 45 31 45 46 41 43 35 2d 41 46 32 37 34 45 34 43 7d } //01 00 
		$a_01_14 = {7b 38 37 32 46 32 36 42 37 2d 44 36 37 35 38 45 42 44 7d } //01 00 
		$a_01_15 = {7b 43 44 38 41 36 46 31 36 2d 43 42 44 39 34 42 43 45 7d } //01 00 
		$a_01_16 = {7b 34 31 35 39 39 38 39 30 2d 38 41 31 38 2d 34 32 30 30 2d 42 45 33 43 2d 42 39 42 31 37 39 42 46 42 43 35 41 7d } //01 00 
		$a_01_17 = {7b 44 34 51 37 53 35 39 56 2d 45 30 48 38 32 46 53 52 7d } //01 00 
		$a_01_18 = {43 7b 51 6a 3b 38 56 35 5b 25 39 53 76 3c 45 2f 21 6d 3e 42 65 77 7c 74 6a 56 78 3f 4e 66 23 63 } //01 00 
		$a_01_19 = {43 55 68 59 58 64 4c 29 5b 44 51 48 47 4d 34 70 21 5d 39 30 7d 35 2e 59 6a 24 3e 28 26 2f 73 48 } //01 00 
		$a_01_20 = {43 6d 7d 29 32 26 21 6a 5b 56 26 70 2a 6e 6a 53 21 45 6e 59 71 57 53 42 6a 7c 57 48 5a 46 42 3f } //00 00 
	condition:
		any of ($a_*)
 
}