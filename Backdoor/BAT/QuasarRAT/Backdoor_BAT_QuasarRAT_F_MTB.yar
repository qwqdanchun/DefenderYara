
rule Backdoor_BAT_QuasarRAT_F_MTB{
	meta:
		description = "Backdoor:BAT/QuasarRAT.F!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {70 00 69 00 6e 00 67 00 20 00 2d 00 6e 00 20 00 32 00 30 00 20 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 20 00 3e 00 20 00 6e 00 75 00 6c 00 } //02 00  ping -n 20 localhost > nul
		$a_01_1 = {7b 00 30 00 7d 00 64 00 20 00 3a 00 20 00 7b 00 31 00 7d 00 68 00 20 00 3a 00 20 00 7b 00 32 00 7d 00 6d 00 20 00 3a 00 20 00 7b 00 33 00 7d 00 73 00 } //02 00  {0}d : {1}h : {2}m : {3}s
		$a_01_2 = {55 00 52 00 4c 00 3d 00 66 00 69 00 6c 00 65 00 3a 00 2f 00 2f 00 2f 00 } //02 00  URL=file:///
		$a_01_3 = {55 00 73 00 65 00 72 00 3a 00 20 00 7b 00 30 00 7d 00 7b 00 33 00 7d 00 50 00 61 00 73 00 73 00 3a 00 20 00 7b 00 31 00 7d 00 7b 00 33 00 7d 00 48 00 6f 00 73 00 74 00 3a 00 20 00 7b 00 32 00 7d 00 } //02 00  User: {0}{3}Pass: {1}{3}Host: {2}
		$a_01_4 = {44 00 6f 00 6d 00 61 00 69 00 6e 00 3a 00 20 00 7b 00 31 00 7d 00 7b 00 30 00 7d 00 43 00 6f 00 6f 00 6b 00 69 00 65 00 20 00 4e 00 61 00 6d 00 65 00 3a 00 20 00 7b 00 32 00 7d 00 7b 00 30 00 7d 00 56 00 61 00 6c 00 75 00 65 00 3a 00 20 00 7b 00 33 00 7d 00 7b 00 30 00 7d 00 50 00 61 00 74 00 68 00 3a 00 20 00 7b 00 34 00 7d 00 7b 00 30 00 7d 00 45 00 78 00 70 00 69 00 72 00 65 00 64 00 3a 00 20 00 7b 00 35 00 7d 00 7b 00 30 00 7d 00 48 00 74 00 74 00 70 00 4f 00 6e 00 6c 00 79 00 3a 00 20 00 7b 00 36 00 7d 00 7b 00 30 00 7d 00 53 00 65 00 63 00 75 00 72 00 65 00 3a 00 20 00 7b 00 37 00 7d 00 } //00 00  Domain: {1}{0}Cookie Name: {2}{0}Value: {3}{0}Path: {4}{0}Expired: {5}{0}HttpOnly: {6}{0}Secure: {7}
	condition:
		any of ($a_*)
 
}