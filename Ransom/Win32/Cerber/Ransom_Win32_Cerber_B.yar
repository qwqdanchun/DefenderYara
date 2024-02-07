
rule Ransom_Win32_Cerber_B{
	meta:
		description = "Ransom:Win32/Cerber.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 45 00 52 00 42 00 45 00 52 00 5f 00 4b 00 45 00 59 00 5f 00 50 00 4c 00 41 00 43 00 45 00 } //01 00  CERBER_KEY_PLACE
		$a_03_1 = {46 00 72 00 7a 00 5f 00 53 00 74 00 61 00 74 00 65 00 90 02 08 43 00 3a 00 5c 00 70 00 6f 00 70 00 75 00 70 00 6b 00 69 00 6c 00 6c 00 65 00 72 00 2e 00 65 00 78 00 65 00 90 02 08 43 00 3a 00 5c 00 73 00 74 00 69 00 6d 00 75 00 6c 00 61 00 74 00 6f 00 72 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_03_2 = {68 00 6f 00 6f 00 6b 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 90 02 08 6d 00 75 00 6c 00 74 00 69 00 5f 00 70 00 6f 00 74 00 2e 00 65 00 78 00 65 00 90 02 08 56 00 45 00 4e 00 5f 00 25 00 78 00 90 00 } //01 00 
		$a_03_3 = {66 69 6c 65 5f 65 78 74 65 6e 73 69 6f 6e 90 02 08 66 69 6c 65 5f 62 6f 64 79 90 02 08 2e 76 62 73 90 00 } //00 00 
		$a_00_4 = {78 99 } //01 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Cerber_B_2{
	meta:
		description = "Ransom:Win32/Cerber.B,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 03 00 "
		
	strings :
		$a_03_0 = {ff ff b8 8b 85 90 01 02 ff ff 89 85 90 01 02 ff ff c6 85 90 01 02 ff ff 50 c6 85 90 01 02 ff ff b8 8b 85 90 01 02 ff ff 03 45 90 01 01 89 85 90 01 02 ff ff c6 85 90 01 02 ff ff ff c6 85 90 01 02 ff ff d0 c6 85 90 01 02 ff ff c3 8d 85 90 01 02 ff ff 50 6a 0e 8d 85 90 01 02 ff ff 50 ff b5 90 01 02 ff ff ff 75 08 ff 15 90 00 } //02 00 
		$a_01_1 = {43 00 45 00 52 00 42 00 45 00 52 00 5f 00 43 00 4f 00 52 00 45 00 5f 00 50 00 52 00 4f 00 54 00 45 00 43 00 54 00 49 00 4f 00 4e 00 5f 00 4d 00 55 00 54 00 45 00 58 00 } //02 00  CERBER_CORE_PROTECTION_MUTEX
		$a_00_2 = {46 3a 5c 74 72 61 73 68 5c 63 6f 64 65 5c 77 6f 72 6b 5c 63 65 72 62 65 72 5c 62 69 6e 5c 44 65 62 75 67 5c 63 65 72 62 65 72 5f 78 38 36 2e 70 64 62 } //01 00  F:\trash\code\work\cerber\bin\Debug\cerber_x86.pdb
		$a_00_3 = {45 00 6e 00 63 00 72 00 79 00 70 00 74 00 69 00 6e 00 67 00 20 00 66 00 69 00 6c 00 65 00 20 00 25 00 73 00 2e 00 2e 00 2e 00 0d 00 0a 00 4d 00 6f 00 64 00 69 00 66 00 69 00 65 00 64 00 20 00 61 00 74 00 20 00 25 00 73 00 20 00 25 00 73 00 } //01 00 
		$a_00_4 = {25 00 73 00 5c 00 76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 00 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //00 00 
		$a_00_5 = {7e 15 00 00 } //c8 26 
	condition:
		any of ($a_*)
 
}