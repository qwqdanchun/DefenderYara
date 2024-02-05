
rule Trojan_BAT_AgentTesla_EB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 01 00 00 07 00 "
		
	strings :
		$a_03_0 = {20 d1 c4 d1 c2 20 04 00 00 00 63 20 04 00 00 00 62 20 f6 55 15 f3 61 7d 90 01 04 38 38 02 00 00 7e 90 01 04 20 3a c0 42 be 20 98 89 53 36 58 20 49 5c a0 21 59 20 89 ed f5 d2 61 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EB_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 6f 66 74 5f 47 71 63 61 70 } //01 00 
		$a_01_1 = {61 63 6b 5f 75 67 69 } //01 00 
		$a_01_2 = {66 78 73 6f 6c 69 63 79 5f 52 65 42 52 32 } //01 00 
		$a_01_3 = {6e 75 62 73 5f 49 6e 74 61 74 63 68 61 } //01 00 
		$a_01_4 = {4c 6f 63 74 5f 73 63 74 6d 67 74 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EB_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {03 04 03 8e 69 5d 91 11 01 04 05 5d 91 61 7e 1a 01 00 04 28 90 01 04 03 04 17 58 03 8e 69 5d 91 7e 1b 01 00 04 28 90 01 04 59 11 00 90 00 } //01 00 
		$a_01_1 = {54 00 61 00 73 00 6b 00 54 00 72 00 61 00 79 00 41 00 70 00 70 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EB_MTB_4{
	meta:
		description = "Trojan:BAT/AgentTesla.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 11 00 00 01 00 "
		
	strings :
		$a_81_0 = {47 65 74 4d 65 74 68 6f 64 } //01 00 
		$a_81_1 = {4d 61 74 68 45 61 73 79 } //01 00 
		$a_81_2 = {74 6f 54 65 78 74 } //01 00 
		$a_81_3 = {47 5a 49 44 45 4b 4b 4b 4b } //01 00 
		$a_81_4 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00 
		$a_81_5 = {47 5a 69 70 53 74 72 65 61 6d } //01 00 
		$a_81_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_81_7 = {48 69 70 48 6f 70 } //01 00 
		$a_81_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_9 = {4b 65 79 44 65 63 6f 64 65 72 } //01 00 
		$a_81_10 = {53 74 72 69 6e 67 53 70 6c 69 74 4f 70 74 69 6f 6e 73 } //01 00 
		$a_81_11 = {75 70 6c 6f 61 64 44 61 74 61 } //01 00 
		$a_81_12 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_13 = {64 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00 
		$a_81_14 = {52 65 70 6c 61 63 65 } //01 00 
		$a_81_15 = {77 53 63 61 6e 43 6f 64 65 } //01 00 
		$a_81_16 = {55 72 69 4b 69 6e 64 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EB_MTB_5{
	meta:
		description = "Trojan:BAT/AgentTesla.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0c 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 33 32 32 65 37 65 62 66 2d 39 30 34 31 2d 34 62 37 65 2d 61 66 37 38 2d 63 39 39 32 66 33 34 30 65 64 37 38 } //14 00 
		$a_81_1 = {24 61 66 62 63 33 33 35 65 2d 63 62 36 37 2d 34 32 35 31 2d 62 30 63 33 2d 30 30 66 36 35 63 64 34 37 62 66 38 } //14 00 
		$a_81_2 = {24 36 63 61 66 65 64 65 64 2d 65 62 61 34 2d 34 65 31 36 2d 38 66 31 64 2d 63 35 31 36 35 39 62 30 30 35 31 64 } //01 00 
		$a_81_3 = {49 6d 61 67 65 72 2e 50 6f 64 61 6a 49 6c 6f 73 63 4b 6c 61 73 48 69 73 74 6f 67 72 61 6d 75 47 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_4 = {50 68 6f 74 6f 53 6c 69 64 65 43 53 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_5 = {61 52 33 6e 62 66 38 64 51 70 32 66 65 4c 6d 6b 33 31 2e 53 70 6c 61 73 68 46 6f 72 6d 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_7 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_9 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00 
		$a_81_10 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_81_11 = {41 63 74 69 76 61 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EB_MTB_6{
	meta:
		description = "Trojan:BAT/AgentTesla.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0e 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 36 63 65 66 66 33 35 61 2d 63 34 37 36 2d 34 66 32 66 2d 39 64 30 38 2d 31 36 63 33 64 39 62 64 35 30 39 31 } //14 00 
		$a_81_1 = {24 39 34 38 30 38 30 39 65 2d 35 34 37 32 2d 34 34 66 33 2d 62 30 37 36 2d 64 63 64 66 37 33 37 39 65 37 36 36 } //01 00 
		$a_81_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_3 = {63 61 70 74 61 69 6e 61 6c 6d 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_5 = {54 72 61 63 6b 4d 61 6e 61 67 65 72 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_7 = {77 65 62 73 68 65 6c 6c 4d 61 6e 61 67 65 72 2e 61 62 6f 75 74 46 6f 72 6d 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00 
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_81_10 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_11 = {41 63 74 69 76 61 74 6f 72 } //01 00 
		$a_81_12 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_13 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}