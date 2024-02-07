
rule Backdoor_Win32_Hupigon_EE{
	meta:
		description = "Backdoor:Win32/Hupigon.EE,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 65 00 76 00 69 00 63 00 65 00 5c 00 50 00 68 00 79 00 73 00 69 00 63 00 61 00 6c 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 } //01 00  Device\PhysicalMemory
		$a_01_1 = {69 00 70 00 74 00 69 00 6f 00 6e 00 00 00 00 00 52 00 69 00 73 00 69 00 6e 00 67 00 20 00 52 00 73 00 53 00 68 00 65 00 6c 00 6c } //01 00 
		$a_01_2 = {72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 00 00 52 00 73 00 6d 00 61 00 69 00 6e 00 2e 00 65 } //01 00 
		$a_01_3 = {69 6e 66 6f 3a 53 68 65 6c 6c 20 43 6f 64 65 } //00 00  info:Shell Code
	condition:
		any of ($a_*)
 
}