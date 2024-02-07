
rule Trojan_Win32_VBInject_HA_MTB{
	meta:
		description = "Trojan:Win32/VBInject.HA!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 00 36 00 6e 00 6a 00 6e 00 35 00 56 00 6e 00 6a 00 34 00 4c 00 4d 00 47 00 78 00 30 00 72 00 4c 00 6d 00 78 00 32 00 7a 00 6e 00 72 00 47 00 51 00 38 00 46 00 4d 00 73 00 52 00 33 00 61 00 56 00 4e 00 74 00 77 00 32 00 31 00 35 00 } //01 00  o6njn5Vnj4LMGx0rLmx2znrGQ8FMsR3aVNtw215
		$a_01_1 = {4a 00 6b 00 7a 00 6f 00 66 00 53 00 56 00 49 00 74 00 59 00 79 00 67 00 49 00 4c 00 55 00 69 00 43 00 6d 00 71 00 31 00 4e 00 31 00 36 00 35 00 } //01 00  JkzofSVItYygILUiCmq1N165
		$a_01_2 = {7a 00 4e 00 41 00 4f 00 7a 00 70 00 66 00 7a 00 68 00 75 00 77 00 70 00 57 00 65 00 71 00 47 00 79 00 71 00 35 00 63 00 4a 00 5a 00 6b 00 52 00 4f 00 4b 00 68 00 38 00 39 00 } //01 00  zNAOzpfzhuwpWeqGyq5cJZkROKh89
		$a_01_3 = {52 00 46 00 6b 00 41 00 51 00 53 00 7a 00 79 00 39 00 44 00 72 00 49 00 77 00 36 00 7a 00 31 00 37 00 33 00 } //01 00  RFkAQSzy9DrIw6z173
		$a_01_4 = {41 00 64 00 33 00 34 00 6a 00 55 00 46 00 70 00 5a 00 30 00 39 00 51 00 68 00 44 00 57 00 46 00 7a 00 4a 00 31 00 34 00 35 00 } //00 00  Ad34jUFpZ09QhDWFzJ145
	condition:
		any of ($a_*)
 
}