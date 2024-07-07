
rule Backdoor_Win32_Mdmbot_D{
	meta:
		description = "Backdoor:Win32/Mdmbot.D,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 22 00 25 00 73 00 22 00 2c 00 20 00 4c 00 61 00 75 00 6e 00 63 00 68 00 } //1 rundll32.exe "%s", Launch
		$a_01_1 = {25 00 73 00 5c 00 25 00 64 00 2e 00 62 00 61 00 6b 00 } //1 %s\%d.bak
		$a_01_2 = {53 00 74 00 75 00 62 00 50 00 61 00 74 00 68 00 00 00 00 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 2e 00 65 00 78 00 65 00 } //1
		$a_01_3 = {49 00 20 00 61 00 6d 00 20 00 72 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 20 00 75 00 6e 00 64 00 65 00 72 00 20 00 6d 00 63 00 70 00 72 00 6f 00 78 00 79 00 2e 00 65 00 78 00 65 00 } //1 I am running under mcproxy.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}