
rule Backdoor_Win32_ShellSpid_A_dha{
	meta:
		description = "Backdoor:Win32/ShellSpid.A!dha,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 20 20 20 2f 5c 20 20 7c 20 20 2f 5c } //01 00      /\  |  /\
		$a_01_1 = {20 20 20 20 2f 2f 5c 2e 20 2e 2f 2f 5c } //01 00      //\. .//\
		$a_01_2 = {20 20 20 20 2f 2f 5c 20 2e 20 2f 2f 5c } //01 00      //\ . //\
		$a_01_3 = {20 20 20 20 2f 20 20 28 20 29 2f 20 20 5c } //01 00      /  ( )/  \
		$a_01_4 = {57 65 6c 63 6f 6d 65 20 54 6f 20 53 70 69 64 65 72 20 53 68 65 6c 6c 21 } //00 00  Welcome To Spider Shell!
		$a_01_5 = {00 5d 04 00 } //00 15 
	condition:
		any of ($a_*)
 
}