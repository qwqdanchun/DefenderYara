
rule Backdoor_Win32_Avrkill{
	meta:
		description = "Backdoor:Win32/Avrkill,SIGNATURE_TYPE_PEHSTR,68 00 68 00 07 00 00 "
		
	strings :
		$a_01_0 = {54 61 73 6b 6b 69 6c 6c 20 20 20 2f 66 69 20 20 20 22 69 6d 61 67 65 6e 61 6d 65 20 20 20 65 71 20 20 20 52 41 56 4d 4f 4e 2e 45 58 45 22 20 20 20 2f 66 00 54 61 73 6b 6b 69 6c 6c 20 20 20 2f 66 69 20 20 20 22 69 6d 61 67 65 6e 61 6d 65 20 20 20 65 71 20 20 20 72 66 77 73 72 76 2e 65 78 65 22 20 20 20 2f 66 } //100
		$a_01_1 = {57 49 4e 4e 54 00 00 00 63 3a 5c 00 5c 73 65 72 76 65 72 2e 65 78 65 00 73 65 74 73 6f 63 6b 6f 70 74 20 45 72 72 6f 72 21 } //1
		$a_01_2 = {44 4f 57 4e 4c 4f 41 44 3a 00 00 00 53 54 4f 50 41 54 54 41 43 4b 00 00 75 64 70 } //1
		$a_01_3 = {48 41 52 44 57 41 52 45 5c 44 45 53 43 52 49 50 54 49 4f 4e 5c 53 79 73 74 65 6d 5c 43 65 6e 74 72 61 6c 50 72 6f 63 65 73 73 6f 72 5c 30 } //1 HARDWARE\DESCRIPTION\System\CentralProcessor\0
		$a_01_4 = {57 69 6e 45 78 65 63 00 00 00 00 00 47 65 74 4d 6f 64 75 6c 65 48 61 6e 64 6c 65 41 00 00 00 00 43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 73 65 72 76 65 72 2e 65 78 65 } //1
		$a_01_5 = {57 69 72 65 6c 65 73 73 20 5a 65 72 6f 20 43 6f 6e 66 69 67 75 72 61 63 74 69 6f 6e } //1 Wireless Zero Configuraction
		$a_01_6 = {32 30 32 2e 31 30 34 2e 32 33 36 2e 36 36 } //1 202.104.236.66
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=104
 
}