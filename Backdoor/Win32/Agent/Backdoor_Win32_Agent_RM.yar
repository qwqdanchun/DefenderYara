
rule Backdoor_Win32_Agent_RM{
	meta:
		description = "Backdoor:Win32/Agent.RM,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b 44 24 04 53 55 56 57 50 6a 00 68 2a 04 00 00 ff 15 90 01 04 8b d8 85 db 75 07 5f 5e 5d 5b c2 08 00 8b 6c 24 18 83 c9 ff 8b fd 33 c0 f2 ae f7 d1 49 6a 04 8b f1 68 00 10 00 00 46 56 50 53 ff 15 90 01 04 8b f8 85 ff 75 07 5f 5e 5d 5b c2 08 00 6a 00 56 55 57 53 ff 15 90 01 04 85 c0 75 07 5f 5e 5d 5b c2 08 00 90 00 } //1
		$a_00_1 = {77 62 00 00 6f 70 65 6e 00 00 00 00 69 65 78 70 6c 6f 72 65 2e 65 78 65 00 00 00 00 20 3e 20 6e 75 6c 00 00 20 2f 63 20 20 64 65 6c 20 00 00 00 43 4f 4d 53 50 45 43 00 77 69 6e 6c 6f 67 6f 6e 2e 65 78 65 00 00 00 00 65 78 70 6c 6f 72 65 72 2e 65 78 65 00 00 00 00 5c 53 56 43 48 30 53 54 2e 45 58 45 00 00 00 00 44 4c 4c 00 5c 6d 73 76 63 6c 61 70 69 78 2e 64 6c 6c } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}