
rule Backdoor_Linux_Mirai_bf_MTB{
	meta:
		description = "Backdoor:Linux/Mirai.bf!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,07 00 07 00 04 00 00 05 00 "
		
	strings :
		$a_00_0 = {5c 78 35 39 5c 78 36 66 5c 78 37 35 5c 78 34 31 5c 78 36 39 5c 78 36 65 5c 78 37 34 5c 78 34 36 5c 78 37 35 5c 78 36 33 5c 78 36 62 5c 78 34 64 5c 78 36 35 5c 78 35 39 5c 78 36 66 5c 78 37 35 5c 78 34 36 5c 78 37 35 5c 78 36 33 5c 78 36 62 5c 78 35 37 5c 78 36 39 5c 78 37 34 5c 78 36 38 5c 78 34 64 5c 78 37 39 5c 78 34 32 5c 78 36 66 5c 78 37 34 5c 78 34 65 5c 78 36 35 5c 78 37 34 5c 78 34 63 5c 78 36 39 5c 78 36 63 5c 78 34 32 5c 78 36 39 5c 78 37 34 5c 78 36 33 5c 78 36 38 } //01 00  \x59\x6f\x75\x41\x69\x6e\x74\x46\x75\x63\x6b\x4d\x65\x59\x6f\x75\x46\x75\x63\x6b\x57\x69\x74\x68\x4d\x79\x42\x6f\x74\x4e\x65\x74\x4c\x69\x6c\x42\x69\x74\x63\x68
		$a_00_1 = {42 79 70 61 73 73 65 73 41 72 65 46 6f 72 53 6b 69 64 73 55 77 55 } //01 00  BypassesAreForSkidsUwU
		$a_00_2 = {55 44 50 52 41 57 } //01 00  UDPRAW
		$a_00_3 = {75 64 70 68 65 78 } //00 00  udphex
	condition:
		any of ($a_*)
 
}