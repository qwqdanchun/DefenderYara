
rule Backdoor_Win32_Mimail_A{
	meta:
		description = "Backdoor:Win32/Mimail.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {52 6a 00 6a 00 6a 16 8b 85 ?? ?? ff ff 50 ff 15 ?? ?? ?? ?? 89 85 24 ?? ?? ?? 83 bd 24 90 1b 02 00 75 ?? 83 bd 24 90 1b 02 00 0f 85 d5 05 00 00 ff 15 ?? ?? ?? ?? 83 f8 7a 0f 85 } //3
		$a_00_1 = {4f 00 70 00 65 00 72 00 61 00 2f 00 39 00 2e 00 38 00 30 00 20 00 28 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 20 00 36 00 2e 00 31 00 3b 00 20 00 55 00 3b 00 20 00 72 00 75 00 29 00 20 00 50 00 72 00 65 00 73 00 74 00 6f 00 2f 00 32 00 2e 00 37 00 2e 00 36 00 32 00 20 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 2f 00 31 00 31 00 2e 00 30 00 31 00 } //1 Opera/9.80 (Windows NT 6.1; U; ru) Presto/2.7.62 Version/11.01
		$a_00_2 = {57 00 69 00 6e 00 48 00 74 00 74 00 70 00 43 00 6c 00 69 00 65 00 6e 00 74 00 } //1 WinHttpClient
		$a_00_3 = {47 00 45 00 54 00 00 00 47 00 45 00 54 00 00 00 50 00 4f 00 53 00 54 00 00 00 00 00 50 00 4f 00 53 00 54 00 } //1
	condition:
		((#a_03_0  & 1)*3+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}