
rule Backdoor_Win32_FlawedAmmyy_C{
	meta:
		description = "Backdoor:Win32/FlawedAmmyy.C,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {74 72 75 6e 6b 5c 49 53 4f 6d 6b 5c 31 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 31 2e 70 64 62 } //3 trunk\ISOmk\1\obj\Release\1.pdb
		$a_00_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 39 00 32 00 2e 00 33 00 38 00 2e 00 31 00 33 00 35 00 2e 00 36 00 37 00 } //5 http://92.38.135.67
		$a_00_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 32 00 37 00 2e 00 31 00 30 00 32 00 2e 00 37 00 30 00 2e 00 31 00 39 00 36 00 } //5 http://27.102.70.196
		$a_00_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 36 00 39 00 2e 00 32 00 33 00 39 00 2e 00 31 00 32 00 38 00 2e 00 31 00 37 00 30 00 } //5 http://169.239.128.170
		$a_02_4 = {2f 00 71 00 20 00 2f 00 69 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 [0-06] 2e 00 [0-06] 2e 00 [0-06] 2e 00 [0-06] 2f 00 } //3
		$a_00_5 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 6d 00 73 00 69 00 65 00 78 00 65 00 63 00 2e 00 65 00 78 00 65 00 } //1 C:\Windows\System32\msiexec.exe
	condition:
		((#a_00_0  & 1)*3+(#a_00_1  & 1)*5+(#a_00_2  & 1)*5+(#a_00_3  & 1)*5+(#a_02_4  & 1)*3+(#a_00_5  & 1)*1) >=6
 
}