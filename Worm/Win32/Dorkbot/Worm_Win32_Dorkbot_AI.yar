
rule Worm_Win32_Dorkbot_AI{
	meta:
		description = "Worm:Win32/Dorkbot.AI,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 8d 4d 94 51 e9 2c 6a ff ff } //01 00 
		$a_01_1 = {36 00 38 00 37 00 34 00 37 00 34 00 37 00 30 00 33 00 41 00 32 00 46 00 32 00 46 00 37 00 37 00 37 00 37 00 37 00 37 00 32 00 45 00 36 00 34 00 37 00 32 00 36 00 35 00 37 00 39 00 37 00 33 00 36 00 35 00 36 00 31 00 37 00 32 00 36 00 33 00 36 00 38 00 32 00 45 00 36 00 39 00 36 00 45 00 36 00 36 00 36 00 46 00 00 00 00 00 08 00 00 00 74 00 65 00 6d 00 70 00 00 00 00 00 80 00 00 00 48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 72 00 75 00 6e 00 } //01 00 
		$a_01_2 = {31 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 55 00 73 00 75 00 61 00 72 00 69 00 6f 00 5c 00 31 00 73 00 63 00 72 00 69 00 74 00 6f 00 72 00 69 00 6f 00 5c 00 45 00 78 00 5c 00 45 00 78 00 2e 00 76 00 62 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}