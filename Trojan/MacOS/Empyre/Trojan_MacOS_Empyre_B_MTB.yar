
rule Trojan_MacOS_Empyre_B_MTB{
	meta:
		description = "Trojan:MacOS/Empyre.B!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_00_0 = {42 75 6e 64 6c 65 64 45 6d 70 79 72 65 4c 61 75 6e 63 68 65 72 2f 45 6d 70 79 72 65 53 74 61 67 65 72 2f 45 6d 70 79 72 65 53 74 61 67 65 72 2f } //3 BundledEmpyreLauncher/EmpyreStager/EmpyreStager/
		$a_00_1 = {5f 61 63 74 69 76 61 74 65 53 74 61 67 65 72 } //1 _activateStager
		$a_00_2 = {59 32 31 6b 49 44 30 67 49 6e 42 7a 49 43 31 6c 5a 69 42 38 49 47 64 79 5a 58 41 67 54 47 6c 30 64 47 78 6c 58 43 42 54 62 6d 6c 30 59 32 67 67 66 43 42 6e 63 6d 56 77 49 43 31 32 49 47 64 79 5a 58 41 69 } //1 Y21kID0gInBzIC1lZiB8IGdyZXAgTGl0dGxlXCBTbml0Y2ggfCBncmVwIC12IGdyZXAi
		$a_00_3 = {62 33 49 67 61 53 42 70 62 69 42 79 59 57 35 6e 5a 53 67 79 4e 54 59 70 4f 67 6f 67 49 43 41 67 61 6a 30 6f 61 69 74 54 57 32 6c 64 4b 32 39 79 5a 43 68 72 5a 58 6c 62 61 53 56 73 5a 57 34 6f 61 32 56 35 4b 56 30 70 4b 53 55 79 4e 54 59 4b 49 43 41 67 49 46 4e 62 61 56 30 73 55 31 74 71 58 54 31 54 57 32 70 64 4c 46 4e 62 61 56 30 4b } //1 b3IgaSBpbiByYW5nZSgyNTYpOgogICAgaj0oaitTW2ldK29yZChrZXlbaSVsZW4oa2V5KV0pKSUyNTYKICAgIFNbaV0sU1tqXT1TW2pdLFNbaV0K
		$a_00_4 = {43 6b 6c 57 50 57 46 62 4d 44 6f 30 58 54 74 6b 59 58 52 68 50 57 46 62 4e 44 70 64 4f 32 74 6c 65 54 31 4a 56 69 73 6e 52 31 34 34 56 6b 70 46 4d 53 56 6c 55 46 63 39 4b 45 73 76 58 57 6b 31 63 57 70 35 62 48 64 47 62 33 30 74 63 6c 46 42 62 6a 77 6e 4f 31 4d 73 61 69 78 76 64 58 51 39 63 6d 46 75 5a 32 55 6f 4d 6a 55 32 4b 53 77 77 4c 46 74 64 43 6d } //1 CklWPWFbMDo0XTtkYXRhPWFbNDpdO2tleT1JVisnR144VkpFMSVlUFc9KEsvXWk1cWp5bHdGb30tclFBbjwnO1MsaixvdXQ9cmFuZ2UoMjU2KSwwLFtdCm
	condition:
		((#a_00_0  & 1)*3+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=3
 
}