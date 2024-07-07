
rule Backdoor_Win32_Turkojan_AI{
	meta:
		description = "Backdoor:Win32/Turkojan.AI,SIGNATURE_TYPE_PEHSTR,01 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {06 00 44 00 45 00 4e 00 45 00 4d 00 45 00 06 00 44 00 56 00 43 00 4c 00 41 00 4c 00 03 00 45 00 44 00 54 00 0b 00 50 00 41 00 43 00 4b 00 41 00 47 00 45 00 49 00 4e 00 46 00 4f 00 07 00 52 00 4f 00 4f 00 54 00 4b 00 49 00 54 00 } //1
		$a_01_1 = {06 00 44 00 56 00 43 00 4c 00 41 00 4c 00 03 00 45 00 44 00 54 00 06 00 4b 00 4c 00 41 00 56 00 59 00 45 00 0b 00 50 00 41 00 43 00 4b 00 41 00 47 00 45 00 49 00 4e 00 46 00 4f 00 07 00 50 00 45 00 4e 00 43 00 45 00 52 00 45 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}