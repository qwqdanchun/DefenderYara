
rule Trojan_Win64_IcedID_DW_MTB{
	meta:
		description = "Trojan:Win64/IcedID.DW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {41 73 63 6c 30 35 39 6a 61 6e 6c 54 34 49 33 } //01 00  Ascl059janlT4I3
		$a_01_1 = {43 4d 65 42 64 30 79 34 6d 35 6f } //01 00  CMeBd0y4m5o
		$a_01_2 = {44 4a 53 57 39 50 53 79 42 71 57 4e 4c 5a 6f } //01 00  DJSW9PSyBqWNLZo
		$a_01_3 = {4b 4a 62 63 58 7a 6b 54 75 58 41 38 49 } //01 00  KJbcXzkTuXA8I
		$a_01_4 = {53 79 76 4b 57 51 58 47 30 59 79 64 65 } //0a 00  SyvKWQXG0Yyde
		$a_01_5 = {41 66 52 35 5a 51 70 42 4f 53 35 53 } //01 00  AfR5ZQpBOS5S
		$a_01_6 = {43 6f 4d 4f 34 5a 74 62 51 41 69 4d 65 78 } //01 00  CoMO4ZtbQAiMex
		$a_01_7 = {45 79 7a 52 69 39 4a 77 6d 43 56 77 43 7a 4d } //01 00  EyzRi9JwmCVwCzM
		$a_01_8 = {48 67 68 63 67 78 61 73 68 66 67 66 73 66 67 64 66 } //01 00  Hghcgxashfgfsfgdf
		$a_01_9 = {4a 48 65 76 56 51 44 68 6d 73 51 6d 4b 48 } //00 00  JHevVQDhmsQmKH
	condition:
		any of ($a_*)
 
}