
rule Trojan_Win32_Trickbot_ART_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.ART!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {35 00 33 00 34 00 33 00 36 00 33 00 36 00 32 00 31 00 32 00 32 00 32 00 36 00 37 00 35 00 35 00 39 00 34 00 39 00 34 00 34 00 31 00 32 00 31 00 38 00 39 00 32 00 33 00 36 00 36 00 39 00 36 00 36 00 38 00 39 00 36 00 33 00 39 00 31 00 35 00 34 00 38 00 36 00 39 00 39 00 36 00 39 00 34 00 34 00 33 00 34 00 31 00 32 00 35 00 34 00 39 00 37 00 37 00 31 00 35 00 32 00 39 00 31 00 31 00 39 00 37 00 39 00 35 00 38 00 35 00 37 00 32 00 33 00 34 00 33 00 33 00 39 00 37 00 37 00 36 00 38 00 32 00 34 00 35 00 34 00 31 00 36 00 37 00 35 00 32 00 37 00 32 00 39 00 39 00 39 00 35 00 39 00 39 00 35 00 36 00 35 00 39 00 36 00 37 00 35 00 35 00 37 00 36 00 36 00 34 00 38 00 33 00 32 00 33 00 37 00 39 00 37 00 33 00 34 00 } //01 00 
		$a_01_1 = {32 00 32 00 32 00 36 00 37 00 35 00 35 00 39 00 34 00 39 00 34 00 34 00 31 00 32 00 31 00 38 00 39 00 32 00 33 00 36 00 36 00 39 00 36 00 36 00 38 00 39 00 36 00 33 00 39 00 31 00 35 00 34 00 38 00 36 00 39 00 39 00 36 00 39 00 34 00 34 00 33 00 34 00 31 00 32 00 35 00 34 00 39 00 37 00 37 00 31 00 35 00 32 00 39 00 31 00 31 00 39 00 37 00 39 00 35 00 38 00 35 00 37 00 32 00 33 00 34 00 33 00 33 00 39 00 37 00 37 00 36 00 38 00 32 00 34 00 35 00 34 00 31 00 36 00 37 00 35 00 32 00 37 00 32 00 39 00 39 00 39 00 35 00 39 00 39 00 35 00 36 00 35 00 39 00 36 00 37 00 35 00 35 00 37 00 36 00 36 00 34 00 38 00 33 00 32 00 33 00 37 00 39 00 37 00 33 00 34 00 } //01 00 
		$a_01_2 = {41 00 43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 39 00 31 00 31 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 6d 00 70 00 33 00 5f 00 73 00 68 00 61 00 72 00 65 00 62 00 6f 00 78 00 5f 00 30 00 5c 00 44 00 65 00 76 00 65 00 6c 00 6f 00 70 00 69 00 6e 00 67 00 5c 00 56 00 69 00 73 00 75 00 61 00 6c 00 20 00 42 00 61 00 73 00 69 00 63 00 20 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 73 00 5c 00 4d 00 50 00 33 00 20 00 53 00 68 00 61 00 72 00 65 00 42 00 6f 00 78 00 5c 00 4d 00 50 00 33 00 20 00 53 00 68 00 61 00 72 00 65 00 42 00 6f 00 78 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_3 = {5c 00 41 00 44 00 3a 00 5c 00 6d 00 70 00 33 00 5f 00 73 00 68 00 61 00 72 00 65 00 62 00 6f 00 78 00 5f 00 30 00 5c 00 44 00 65 00 76 00 65 00 6c 00 6f 00 70 00 69 00 6e 00 67 00 5c 00 56 00 69 00 73 00 75 00 61 00 6c 00 20 00 42 00 61 00 73 00 69 00 63 00 20 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 73 00 5c 00 4d 00 50 00 33 00 20 00 53 00 68 00 61 00 72 00 65 00 42 00 6f 00 78 00 5c 00 4d 00 50 00 33 00 20 00 53 00 68 00 61 00 72 00 65 00 42 00 6f 00 78 00 2e 00 76 00 62 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}