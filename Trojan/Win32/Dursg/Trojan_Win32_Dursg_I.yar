
rule Trojan_Win32_Dursg_I{
	meta:
		description = "Trojan:Win32/Dursg.I,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 6f 00 70 00 3d 00 31 00 26 00 61 00 69 00 64 00 3d 00 25 00 73 00 26 00 73 00 69 00 64 00 3d 00 25 00 73 00 26 00 6b 00 65 00 79 00 3d 00 25 00 73 00 } //01 00 
		$a_01_1 = {53 00 45 00 52 00 50 00 76 00 32 00 } //01 00 
		$a_01_2 = {25 00 73 00 5c 00 6c 00 73 00 61 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_3 = {4b 00 69 00 6c 00 6c 00 53 00 65 00 6c 00 66 00 } //00 00 
	condition:
		any of ($a_*)
 
}