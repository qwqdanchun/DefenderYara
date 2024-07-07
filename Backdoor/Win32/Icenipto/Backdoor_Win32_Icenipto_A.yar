
rule Backdoor_Win32_Icenipto_A{
	meta:
		description = "Backdoor:Win32/Icenipto.A,SIGNATURE_TYPE_PEHSTR,20 00 20 00 05 00 00 "
		
	strings :
		$a_01_0 = {49 00 63 00 65 00 50 00 6f 00 69 00 6e 00 74 00 2e 00 65 00 78 00 65 00 00 00 0c 00 00 00 77 00 69 00 6e 00 64 00 69 00 72 } //10
		$a_01_1 = {66 00 79 00 68 00 77 00 34 00 6b 00 37 00 34 00 68 00 72 00 2e 00 65 00 78 00 65 00 00 00 02 00 00 00 5c 00 00 00 08 00 00 00 2e 00 65 00 78 00 65 00 00 00 00 00 16 00 00 00 43 00 3a 00 5c 00 6b 00 69 00 6c 00 6c 00 2e 00 62 00 61 00 74 00 00 00 0c 00 00 00 3a 00 72 00 65 00 64 00 65 00 6c 00 } //10
		$a_01_2 = {64 00 72 00 69 00 76 00 65 00 72 00 2e 00 69 00 6e 00 66 00 00 00 1a 00 00 00 5c 00 49 00 50 00 64 00 72 00 69 00 76 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //10
		$a_01_3 = {73 00 74 00 61 00 74 00 65 00 3a 00 20 00 5b 00 20 00 61 00 6c 00 6c 00 20 00 61 00 74 00 74 00 61 00 63 00 6b 00 20 00 73 00 74 00 6f 00 70 00 70 00 65 00 64 00 20 00 5d 00 } //1 state: [ all attack stopped ]
		$a_01_4 = {52 00 45 00 53 00 45 00 54 00 00 00 1c 00 00 00 5c 00 56 00 69 00 64 00 65 00 6f 00 43 00 61 00 72 00 64 00 2e 00 65 00 78 00 65 00 00 00 00 00 0e 00 00 00 45 00 78 00 65 00 63 00 75 00 74 00 65 } //1
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=32
 
}