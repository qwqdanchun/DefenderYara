
rule Backdoor_Win32_Knockex_H{
	meta:
		description = "Backdoor:Win32/Knockex.H,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_03_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 90 02 02 57 4d 44 4d 20 50 4d 53 50 20 53 65 72 76 69 63 65 90 02 02 5c 73 79 73 74 65 6d 33 32 5c 63 73 73 72 73 73 2e 65 78 65 90 00 } //2
		$a_03_1 = {45 6e 61 62 6c 65 46 69 72 65 77 61 6c 6c 90 02 02 4f 75 74 70 6f 73 74 20 46 69 72 65 77 61 6c 6c 20 50 72 6f 90 00 } //2
		$a_01_2 = {3a 2a 3a 45 6e 61 62 6c 65 64 3a 44 48 43 50 20 43 6c 69 65 6e 74 } //2 :*:Enabled:DHCP Client
		$a_01_3 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 00 73 64 61 73 64 61 64 73 61 64 2e 65 78 65 00 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=8
 
}