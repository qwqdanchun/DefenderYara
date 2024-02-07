
rule Backdoor_Win32_GraceWire_F_dha{
	meta:
		description = "Backdoor:Win32/GraceWire.F!dha,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 33 6f 65 43 53 49 66 78 30 4a 36 55 74 63 56 } //01 00  c3oeCSIfx0J6UtcV
		$a_01_1 = {65 72 30 65 77 6a 66 6c 6b 33 71 72 68 6a 38 31 } //01 00  er0ewjflk3qrhj81
		$a_01_2 = {6e 00 65 00 74 00 73 00 68 00 20 00 61 00 64 00 76 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 72 00 75 00 6c 00 65 00 20 00 6e 00 61 00 6d 00 65 00 3d 00 22 00 25 00 73 00 22 00 } //01 00  netsh advfirewall firewall delete rule name="%s"
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 53 00 41 00 53 00 47 00 65 00 6e 00 65 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  SoftwareSASGeneration
		$a_01_4 = {67 61 74 65 20 70 6f 72 74 3a 20 25 69 20 28 73 65 74 20 77 69 74 68 20 25 73 29 } //01 00  gate port: %i (set with %s)
		$a_01_5 = {2d 2d 2d 2d 2d 2d 2d 2d 20 5b 43 75 72 72 65 6e 74 20 63 6f 6e 66 69 67 5d } //00 00  -------- [Current config]
		$a_01_6 = {00 5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}