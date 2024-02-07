
rule TrojanSpy_BAT_Golroted_C{
	meta:
		description = "TrojanSpy:BAT/Golroted.C,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 75 6e 74 69 6d 65 54 79 70 65 48 61 6e 64 6c 65 } //01 00  RuntimeTypeHandle
		$a_01_1 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //01 00  GetTypeFromHandle
		$a_01_2 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //01 00  get_Assembly
		$a_01_3 = {53 79 73 74 65 6d 2e 52 75 6e 74 69 6d 65 2e 43 6f 6d 70 69 6c 65 72 53 65 72 76 69 63 65 73 } //01 00  System.Runtime.CompilerServices
		$a_01_4 = {52 75 6e 74 69 6d 65 48 65 6c 70 65 72 73 } //01 00  RuntimeHelpers
		$a_01_5 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //01 00  GetObjectValue
		$a_01_6 = {4e 65 77 4c 61 74 65 42 69 6e 64 69 6e 67 } //01 00  NewLateBinding
		$a_01_7 = {4c 61 74 65 47 65 74 } //01 00  LateGet
		$a_01_8 = {4c 61 74 65 43 61 6c 6c } //01 00  LateCall
		$a_00_9 = {47 00 65 00 74 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //01 00  GetObject
		$a_00_10 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //01 00  Invoke
		$a_00_11 = {4c 00 6f 00 61 00 64 00 } //01 00  Load
		$a_03_12 = {14 d0 02 00 00 01 28 90 01 04 72 90 01 04 17 8d 01 00 00 01 13 0d 11 0d 16 28 90 01 04 28 90 01 04 a2 11 0d 14 14 14 28 90 01 04 28 90 01 04 0d 09 74 02 00 00 01 28 90 01 04 28 90 01 04 0a 2a 90 00 } //01 00 
		$a_03_13 = {09 11 2a 09 11 2a 91 08 11 29 91 11 2a 1a 5d 1d 5f 62 d2 61 09 11 2a 17 da 91 61 20 90 01 04 5d b4 9c 11 2a 17 d6 13 2a 11 2a 11 3d 3e 90 01 04 11 29 17 d6 13 29 11 29 17 3e 90 01 04 09 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}