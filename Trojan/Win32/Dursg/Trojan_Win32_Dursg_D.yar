
rule Trojan_Win32_Dursg_D{
	meta:
		description = "Trojan:Win32/Dursg.D,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 25 00 73 00 2f 00 73 00 65 00 2e 00 70 00 68 00 70 00 3f 00 70 00 6f 00 70 00 3d 00 31 00 26 00 61 00 69 00 64 00 3d 00 25 00 73 00 26 00 73 00 69 00 64 00 3d 00 25 00 73 00 26 00 6b 00 65 00 79 00 3d 00 25 00 73 00 } //01 00 
		$a_01_1 = {72 00 65 00 71 00 75 00 65 00 73 00 74 00 2e 00 70 00 68 00 70 00 3f 00 61 00 69 00 64 00 3d 00 25 00 73 00 } //01 00 
		$a_01_2 = {50 68 19 00 02 00 6a 00 68 2c 5a 41 00 68 01 00 00 80 ff 15 } //01 00 
		$a_01_3 = {6a 00 68 80 00 00 00 6a 03 6a 00 6a 03 68 00 00 00 80 56 ff 15 } //00 00 
	condition:
		any of ($a_*)
 
}