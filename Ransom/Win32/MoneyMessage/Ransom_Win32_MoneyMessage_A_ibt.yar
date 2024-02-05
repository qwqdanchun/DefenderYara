
rule Ransom_Win32_MoneyMessage_A_ibt{
	meta:
		description = "Ransom:Win32/MoneyMessage.A!ibt,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0c 00 00 14 00 "
		
	strings :
		$a_81_0 = {57 57 39 31 63 69 42 6d 61 57 78 6c 63 79 42 33 59 58 4d 67 5a 57 35 6a 63 6e 6c 77 64 47 56 6b 49 47 4a 35 49 43 4a 4e 62 32 35 6c 65 53 } //01 00 
		$a_81_1 = {31 32 33 34 35 2d 31 32 33 34 35 2d 31 32 32 33 35 2d 31 32 33 35 34 } //01 00 
		$a_81_2 = {51 7a 70 63 64 32 6c 75 5a 47 39 33 63 77 3d 3d } //01 00 
		$a_80_3 = {6d 75 74 65 78 5f 6e 61 6d 65 22 3a } //mutex_name":  01 00 
		$a_80_4 = {73 6b 69 70 5f 64 69 72 65 63 74 6f 72 69 65 73 22 3a } //skip_directories":  01 00 
		$a_80_5 = {6e 65 74 77 6f 72 6b 5f 70 75 62 6c 69 63 5f 6b 65 79 22 3a } //network_public_key":  01 00 
		$a_80_6 = {6e 65 74 77 6f 72 6b 5f 70 72 69 76 61 74 65 5f 6b 65 79 22 3a } //network_private_key":  01 00 
		$a_80_7 = {70 72 6f 63 65 73 73 65 73 5f 74 6f 5f 6b 69 6c 6c 22 3a } //processes_to_kill":  01 00 
		$a_80_8 = {73 65 72 76 69 63 65 73 5f 74 6f 5f 73 74 6f 70 22 3a } //services_to_stop":  01 00 
		$a_80_9 = {64 6f 6d 61 69 6e 5f 6c 6f 67 69 6e 22 3a } //domain_login":  01 00 
		$a_80_10 = {64 6f 6d 61 69 6e 5f 70 61 73 73 77 6f 72 64 22 3a } //domain_password":  01 00 
		$a_80_11 = {63 72 79 70 74 5f 6f 6e 6c 79 5f 74 68 65 73 65 5f 64 69 72 65 63 74 6f 72 69 65 73 22 3a } //crypt_only_these_directories":  00 00 
	condition:
		any of ($a_*)
 
}