
rule Trojan_Win32_Beeldeb_C{
	meta:
		description = "Trojan:Win32/Beeldeb.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {46 69 6c 65 49 6e 73 74 61 6c 6c 28 27 90 02 08 27 2c 40 54 65 6d 70 44 69 72 20 26 20 27 5c 90 02 08 27 2c 31 29 90 00 } //01 00 
		$a_03_1 = {24 63 6f 6e 74 65 6e 74 20 3d 20 46 69 6c 65 52 65 61 64 28 40 54 65 6d 70 44 69 72 20 26 20 27 5c 90 02 08 27 2c 46 69 6c 65 47 65 74 53 69 7a 65 28 20 40 54 65 6d 70 44 69 72 20 26 90 00 } //01 00 
		$a_03_2 = {46 69 6c 65 57 72 69 74 65 28 40 54 65 6d 70 44 69 72 20 26 20 27 5c 90 02 08 27 2c 53 74 72 69 6e 67 52 65 70 6c 61 63 65 28 20 24 63 6f 6e 74 65 6e 74 2c 27 90 02 06 27 2c 27 27 29 29 90 00 } //01 00 
		$a_03_3 = {46 69 6c 65 57 72 69 74 65 28 40 54 65 6d 70 44 69 72 20 26 20 27 5c 90 02 08 2e 74 78 74 27 2c 53 74 72 69 6e 67 52 65 70 6c 61 63 65 28 20 24 63 6f 6e 74 65 6e 74 32 2c 27 56 53 27 2c 27 27 29 29 90 00 } //01 00 
		$a_03_4 = {52 75 6e 57 61 69 74 28 40 43 6f 6d 53 70 65 63 20 26 20 27 20 2f 63 20 27 20 26 20 40 74 65 6d 70 64 69 72 20 26 20 27 5c 90 02 08 2e 65 78 65 20 90 02 08 27 2c 20 40 54 65 6d 70 44 69 72 2c 20 40 53 57 5f 48 49 44 45 29 90 00 } //00 00 
		$a_00_5 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}