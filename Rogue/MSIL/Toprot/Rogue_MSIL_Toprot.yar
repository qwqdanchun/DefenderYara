
rule Rogue_MSIL_Toprot{
	meta:
		description = "Rogue:MSIL/Toprot,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 2d 00 73 00 68 00 69 00 65 00 6c 00 64 00 } //2 security-shield
		$a_00_1 = {42 00 61 00 63 00 6b 00 64 00 6f 00 6f 00 72 00 3a 00 57 00 69 00 6e 00 33 00 32 00 2f 00 43 00 79 00 63 00 62 00 6f 00 74 00 2e 00 42 00 20 00 69 00 73 00 20 00 61 00 20 00 62 00 61 00 63 00 6b 00 64 00 6f 00 6f 00 72 00 20 00 74 00 72 00 6f 00 6a 00 61 00 6e 00 20 00 74 00 68 00 61 00 74 00 20 00 61 00 6c 00 6c 00 6f 00 77 00 73 00 20 00 61 00 74 00 74 00 61 00 63 00 6b 00 65 00 72 00 73 00 20 00 75 00 6e 00 61 00 75 00 74 00 68 00 6f 00 72 00 69 00 7a 00 65 00 64 00 20 00 61 00 63 00 63 00 65 00 73 00 73 00 20 00 61 00 6e 00 64 00 20 00 63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 } //2 Backdoor:Win32/Cycbot.B is a backdoor trojan that allows attackers unauthorized access and control
		$a_00_2 = {43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 53 00 74 00 61 00 74 00 75 00 73 00 20 00 2d 00 20 00 55 00 6e 00 70 00 72 00 6f 00 74 00 65 00 63 00 74 00 65 00 64 00 21 00 20 00 43 00 6c 00 69 00 63 00 6b 00 20 00 68 00 65 00 72 00 65 00 20 00 74 00 6f 00 20 00 70 00 72 00 6f 00 74 00 65 00 63 00 74 00 20 00 79 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 2e 00 } //2 Computer Status - Unprotected! Click here to protect your computer.
		$a_00_3 = {2f 00 6f 00 72 00 64 00 65 00 72 00 2f 00 70 00 61 00 79 00 2e 00 70 00 68 00 70 00 3f 00 68 00 77 00 69 00 64 00 3d 00 } //2 /order/pay.php?hwid=
		$a_00_4 = {41 00 63 00 74 00 69 00 76 00 61 00 74 00 65 00 20 00 6e 00 6f 00 77 00 20 00 74 00 6f 00 20 00 72 00 65 00 6d 00 6f 00 76 00 65 00 20 00 74 00 68 00 72 00 65 00 61 00 74 00 73 00 2e 00 } //1 Activate now to remove threats.
		$a_00_5 = {50 00 6c 00 65 00 61 00 73 00 65 00 20 00 41 00 63 00 74 00 69 00 76 00 61 00 74 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 63 00 6f 00 70 00 79 00 20 00 6f 00 66 00 20 00 41 00 6e 00 74 00 69 00 2d 00 56 00 69 00 72 00 75 00 73 00 20 00 50 00 72 00 6f 00 } //1 Please Activate your copy of Anti-Virus Pro
		$a_00_6 = {41 00 56 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 AV.Properties.Resources
	condition:
		((#a_01_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=5
 
}