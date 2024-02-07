
rule TrojanDropper_AndroidOS_Agent_D_MTB{
	meta:
		description = "TrojanDropper:AndroidOS/Agent.D!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 20 98 20 8d 20 02 48 34 73 49 41 41 41 41 41 41 41 41 41 4f 53 39 65 58 78 55 31 64 30 2f 66 75 36 64 4a 5a 4d 46 4d 69 45 42 6b 6a 44 67 5a 41 45 6e 42 48 44 43 31 71 44 55 44 70 4d 51 41 6b 45 64 43 57 4a 55 4e 44 4f 51 77 49 51 31 51 73 44 67 30 6f 5a 4e 63 55 45 6e 43 64 41 73 67 47 4f 31 66 53 4a 75 73 59 56 2b 62 51 74 39 59 72 57 74 74 57 70 6e 78 4c 61 75 54 79 65 4a 45 55 53 30 34 31 4b 7a 35 } //01 00 
		$a_01_1 = {2f 61 74 2e 73 6f } //01 00  /at.so
		$a_00_2 = {56 31 37 31 32 30 31 30 31 41 6a 31 61 72 73 6f } //01 00  V17120101Aj1arso
		$a_00_3 = {2f 47 50 4a 61 72 30 4c } //01 00  /GPJar0L
		$a_01_4 = {4c 63 6f 6d 2f 64 2f 6d 2f 67 70 2f 61 2f 69 3b } //00 00  Lcom/d/m/gp/a/i;
		$a_00_5 = {5d 04 00 } //00 50 
	condition:
		any of ($a_*)
 
}