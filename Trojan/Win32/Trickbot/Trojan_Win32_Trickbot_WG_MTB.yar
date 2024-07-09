
rule Trojan_Win32_Trickbot_WG_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.WG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0a 00 00 "
		
	strings :
		$a_02_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 [0-06] 2e 00 [0-06] 2e 00 [0-06] 2e 00 [0-06] 2f 00 [0-20] 2e 00 70 00 6e 00 67 00 } //1
		$a_02_1 = {68 74 74 70 3a 2f 2f [0-06] 2e [0-06] 2e [0-06] 2e [0-06] 2f [0-20] 2e 70 6e 67 } //1
		$a_80_2 = {49 6e 66 4d 61 63 68 69 6e 65 } //InfMachine  1
		$a_80_3 = {70 79 73 6d 62 } //pysmb  1
		$a_80_4 = {53 69 7a 65 20 2d 20 25 64 20 6b 42 } //Size - %d kB  1
		$a_80_5 = {5c 5c 25 73 5c 49 50 43 24 } //\\%s\IPC$  1
		$a_81_6 = {4d 41 43 48 49 4e 45 20 49 4e 20 57 4f 52 4b 47 52 4f 55 50 } //1 MACHINE IN WORKGROUP
		$a_80_7 = {4c 44 41 50 3a 2f 2f 25 6c 73 } //LDAP://%ls  1
		$a_80_8 = {28 6f 62 6a 65 63 74 43 61 74 65 67 6f 72 79 3d 63 6f 6d 70 75 74 65 72 29 28 75 73 65 72 41 63 63 6f 75 6e 74 43 6f 6e 74 72 6f 6c } //(objectCategory=computer)(userAccountControl  1
		$a_80_9 = {7b 30 30 31 36 37 37 44 30 2d 46 44 31 36 2d 31 31 43 45 2d 41 42 43 34 2d 30 32 36 30 38 43 39 45 37 35 35 33 7d } //{001677D0-FD16-11CE-ABC4-02608C9E7553}  1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_81_6  & 1)*1+(#a_80_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1) >=9
 
}