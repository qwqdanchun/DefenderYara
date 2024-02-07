
rule Trojan_Win32_Glupteba_PD_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.PD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {83 c7 08 83 ed 01 90 18 81 3d 90 02 08 90 18 81 3d 90 02 08 90 18 57 e8 90 02 04 81 3d 90 02 08 75 90 00 } //01 00 
		$a_81_1 = {53 65 74 50 72 69 6f 72 69 74 79 43 6c 61 73 73 } //01 00  SetPriorityClass
		$a_81_2 = {47 65 74 43 6f 6e 73 6f 6c 65 4f 75 74 70 75 74 43 50 } //01 00  GetConsoleOutputCP
		$a_81_3 = {47 65 74 43 6f 6e 73 6f 6c 65 57 69 6e 64 6f 77 } //01 00  GetConsoleWindow
		$a_81_4 = {47 65 74 4e 61 6d 65 64 50 69 70 65 48 61 6e 64 6c 65 53 74 61 74 65 41 } //01 00  GetNamedPipeHandleStateA
		$a_81_5 = {43 6f 6d 70 61 72 65 46 69 6c 65 54 69 6d 65 } //00 00  CompareFileTime
	condition:
		any of ($a_*)
 
}