
rule Trojan_Win32_Adclicker_KR{
	meta:
		description = "Trojan:Win32/Adclicker.KR,SIGNATURE_TYPE_PEHSTR,26 00 26 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {19 61 62 6f 75 74 3a 62 6c 61 6e 6b 00 71 75 65 72 79 49 6e 66 6f 00 00 00 2e 6c 6f 74 74 65 73 68 6f 70 70 69 6e 67 2e 00 71 00 00 00 2e 6d 6d 2e 00 00 00 00 70 72 65 5f 71 72 79 00 2e 62 62 2e 00 00 00 00 6f 72 67 6b 65 79 77 6f 72 64 00 00 2e 65 6e 75 72 69 2e 00 6b 31 00 00 2e 64 61 6e 61 77 61 2e 00 00 00 00 2e 67 73 65 73 74 6f 72 65 2e 00 00 6b 77 64 00 2e 6d 70 6c 65 2e 00 00 73 65 61 72 63 68 5f 73 74 72 00 00 2e 64 64 6d 2e 00 00 00 73 4b 65 79 57 6f 72 64 00 00 00 00 2e 79 65 6f 69 6e 2e 00 2e 6e 73 65 73 68 6f 70 2e 00 00 00 73 63 68 5f 77 6f 72 64 00 00 00 00 2e 7a 65 72 6f 6d 61 72 6b 65 74 2e 00 00 00 00 71 75 65 72 79 00 00 } //0a 00 
		$a_01_1 = {2e 6c 6f 74 74 65 2e 00 73 65 61 72 63 68 54 65 72 6d 00 00 2f 6d 61 69 6e 2f 6d 61 6c 6c 6d 61 69 6e 2e 64 6f 00 00 00 2e 73 68 69 6e 73 65 67 61 65 2e 00 2f 69 6e 64 65 78 2e 67 73 00 00 00 2e 67 73 65 73 68 6f 70 2e 00 00 00 71 75 65 72 79 31 00 00 2f 69 6e 64 65 78 5f 74 61 62 31 2e 6a 73 70 00 2e 63 6a 6d 61 6c 6c 2e 00 00 00 00 53 45 41 52 43 48 5f 4b 45 59 57 4f 52 44 00 00 2f 3f 53 69 64 3d 42 42 42 42 5f 4e 53 30 30 30 30 30 30 5f 30 30 5f 30 30 00 } //0a 00 
		$a_01_2 = {2f 3f 53 69 64 3d 41 41 41 41 5f 30 30 30 30 30 30 30 30 5f 30 30 5f 30 30 00 00 00 2f 3f 53 69 64 3d 30 30 30 32 5f 30 31 30 31 30 34 30 30 5f 30 31 5f 30 31 00 00 00 64 6e 73 68 6f 70 2e 00 74 71 00 00 2f 6d 61 6c 6c 73 2f 69 6e 64 65 78 2e 68 74 6d 6c 00 00 00 2e 69 6e 74 65 72 70 61 72 6b 2e 00 67 64 6c 63 43 64 00 00 2f 69 6e 64 65 78 2e 61 73 70 00 00 2f 00 00 00 2e 67 6d 61 72 6b 65 74 2e 00 00 00 2e 61 75 63 74 69 6f 6e 2e 00 00 00 69 73 68 6f 70 00 00 } //03 00 
		$a_01_3 = {00 73 65 61 72 63 68 66 75 6e 2e 63 6f 2e 6b 72 2f 61 6e 74 5f 72 65 73 75 6c 74 2e 61 73 70 00 00 73 65 61 72 63 68 2e 69 63 72 6f 73 73 2e 63 6f 2e 6b 72 00 } //03 00 
		$a_01_4 = {68 74 74 70 3a 2f 2f 69 74 68 69 6e 6b 2e 74 68 69 6e 6b 73 69 74 65 2e 6b 72 2f 73 65 61 72 63 68 2e 61 73 70 3f 6b 3d 25 73 26 69 64 3d 25 73 00 00 } //01 00 
		$a_01_5 = {7b 45 37 34 42 43 37 34 46 2d 46 34 37 30 2d 34 41 44 37 2d 39 46 42 34 2d 31 41 34 31 37 30 41 30 36 30 38 32 7d } //01 00 
		$a_01_6 = {66 69 6e 64 2e 70 64 62 6f 78 2e 63 6f 2e 6b 72 3a 38 30 30 39 } //01 00 
		$a_01_7 = {7b 34 30 41 42 43 35 38 41 2d 32 36 30 33 2d 34 45 45 32 2d 42 30 45 44 2d 42 30 46 41 32 44 31 31 35 35 31 34 7d } //01 00 
		$a_01_8 = {7b 43 39 35 36 34 39 38 36 2d 36 46 43 44 2d 34 41 38 38 2d 41 33 46 45 2d 42 42 39 42 45 39 43 30 46 31 36 36 7d } //00 00 
	condition:
		any of ($a_*)
 
}