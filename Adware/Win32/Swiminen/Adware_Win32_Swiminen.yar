
rule Adware_Win32_Swiminen{
	meta:
		description = "Adware:Win32/Swiminen,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {6d 00 69 00 6e 00 69 00 2c 00 6e 00 65 00 77 00 73 00 2c 00 66 00 6d 00 74 00 2c 00 74 00 69 00 70 00 73 00 2c 00 74 00 77 00 69 00 6e 00 6b 00 6c 00 65 00 72 00 } //01 00  mini,news,fmt,tips,twinkler
		$a_02_1 = {44 3a 5c 78 77 6f 72 6b 5f 76 73 32 30 31 35 5c 52 65 74 65 6e 74 69 6f 6e 53 6f 66 74 77 61 72 65 5c 62 69 6e 5c 90 03 08 06 53 65 72 76 69 63 65 73 90 02 10 73 76 72 2e 70 64 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_Swiminen_2{
	meta:
		description = "Adware:Win32/Swiminen,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 02 00 "
		
	strings :
		$a_02_0 = {44 3a 5c 78 77 6f 72 6b 5f 76 73 32 30 31 35 5c 52 65 74 65 6e 74 69 6f 6e 53 6f 66 74 77 61 72 65 5c 62 69 6e 5c 61 64 5f 90 02 20 2e 70 64 62 90 00 } //01 00 
		$a_00_1 = {64 61 74 61 3d 25 73 00 68 74 74 70 3a 2f 2f 73 6f 66 74 6c 6f 67 2e 74 77 6f 73 68 61 64 6f 77 2e 63 6e 2f 61 70 69 2f 64 61 74 61 2f 73 79 6e 63 } //01 00 
		$a_00_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 6a 00 69 00 6e 00 67 00 7a 00 75 00 00 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 69 00 43 00 61 00 66 00 65 00 38 00 } //01 00 
		$a_00_3 = {25 00 73 00 5c 00 74 00 77 00 69 00 6e 00 6b 00 6c 00 65 00 72 00 2e 00 69 00 63 00 6f 00 00 00 33 00 36 00 30 00 70 00 69 00 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_Swiminen_3{
	meta:
		description = "Adware:Win32/Swiminen,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 00 90 05 08 01 00 25 00 73 00 25 00 73 00 00 90 05 08 01 00 72 00 65 00 6c 00 61 00 74 00 65 00 66 00 69 00 6c 00 65 00 90 02 20 73 00 76 00 72 00 2e 00 65 00 78 00 65 00 00 90 05 08 01 00 2d 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 00 90 05 08 01 00 90 02 20 65 00 78 00 74 00 2e 00 64 00 6c 00 6c 00 00 90 05 08 01 00 72 00 65 00 67 00 64 00 6c 00 6c 00 3d 00 25 00 73 00 25 00 73 00 00 90 05 08 01 00 90 02 20 36 00 34 00 2e 00 64 00 6c 00 6c 00 90 00 } //01 00 
		$a_00_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 6a 00 69 00 6e 00 67 00 7a 00 75 00 00 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 69 00 43 00 61 00 66 00 65 00 38 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_Swiminen_4{
	meta:
		description = "Adware:Win32/Swiminen,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_00_0 = {25 73 5c 63 6f 6e 66 69 67 2e 64 6c 6c 00 00 00 74 77 6f 73 68 61 64 6f 77 2e 63 6e 00 00 00 00 5b 64 6f 6d 61 69 6e 6e 61 6d 65 5d } //02 00 
		$a_02_1 = {44 3a 5c 78 77 6f 72 6b 5f 76 73 32 30 31 35 5c 52 65 74 65 6e 74 69 6f 6e 53 6f 66 74 77 61 72 65 5c 62 69 6e 5c 90 02 10 6d 67 72 2e 70 64 62 90 00 } //01 00 
		$a_00_2 = {3c 00 7b 00 24 00 72 00 61 00 6e 00 64 00 6f 00 6d 00 7d 00 3e 00 00 00 5c 00 5c 00 00 00 00 00 63 00 6d 00 64 00 00 00 7b 00 63 00 6d 00 64 00 7d 00 } //01 00 
		$a_00_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 6a 00 69 00 6e 00 67 00 7a 00 75 00 00 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 69 00 43 00 61 00 66 00 65 00 38 00 } //01 00 
		$a_00_4 = {68 74 74 70 3a 2f 2f 73 6f 66 74 6c 6f 67 2e 5b 64 6f 6d 61 69 6e 6e 61 6d 65 5d 2f 61 70 69 2f 64 61 74 61 2f 73 79 6e 63 00 00 00 5c 6d 61 69 6e 2e 69 6e 69 } //00 00 
	condition:
		any of ($a_*)
 
}