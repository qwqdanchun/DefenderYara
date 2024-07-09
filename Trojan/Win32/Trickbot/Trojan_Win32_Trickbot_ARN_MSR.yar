
rule Trojan_Win32_Trickbot_ARN_MSR{
	meta:
		description = "Trojan:Win32/Trickbot.ARN!MSR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_02_0 = {3a 5c 55 73 65 72 73 5c 55 73 65 72 5c 44 65 73 6b 74 6f 70 5c 32 30 30 38 5c 43 4e 65 74 77 6f 72 6b 69 6e [0-14] 5c 53 61 6d 70 6c 65 5c 52 65 6c 65 61 73 65 5c 43 4e 65 74 77 6f 72 6b 69 6e 67 2e 70 64 62 } //2
		$a_00_1 = {43 4e 65 74 77 6f 72 6b 69 6e 67 2e 65 78 65 } //2 CNetworking.exe
		$a_01_2 = {50 00 6c 00 65 00 61 00 73 00 65 00 20 00 65 00 6e 00 74 00 65 00 72 00 20 00 79 00 6f 00 75 00 72 00 20 00 6d 00 65 00 73 00 73 00 61 00 67 00 65 00 20 00 28 00 6d 00 61 00 78 00 2e 00 20 00 36 00 34 00 20 00 43 00 68 00 61 00 72 00 61 00 63 00 74 00 65 00 72 00 73 00 29 00 3a 00 } //1 Please enter your message (max. 64 Characters):
		$a_01_3 = {50 00 6c 00 65 00 61 00 73 00 65 00 20 00 65 00 6e 00 74 00 65 00 72 00 20 00 74 00 68 00 65 00 20 00 6e 00 61 00 6d 00 65 00 20 00 6f 00 66 00 20 00 74 00 68 00 65 00 20 00 66 00 69 00 6c 00 65 00 20 00 79 00 6f 00 75 00 20 00 77 00 61 00 6e 00 74 00 20 00 74 00 6f 00 20 00 73 00 65 00 6e 00 64 00 3a 00 } //1 Please enter the name of the file you want to send:
	condition:
		((#a_02_0  & 1)*2+(#a_00_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}