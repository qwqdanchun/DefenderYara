
rule Trojan_Win32_Gontu_B_dll{
	meta:
		description = "Trojan:Win32/Gontu.B!dll,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0a 00 02 00 00 "
		
	strings :
		$a_02_0 = {2a 00 5c 00 41 00 44 00 3a 00 5c 00 57 00 75 00 20 00 54 00 6f 00 6e 00 67 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 73 00 26 00 43 00 6f 00 64 00 65 00 73 00 5c 00 90 02 20 5c 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 48 00 65 00 6c 00 70 00 65 00 72 00 2e 00 76 00 62 00 70 00 90 00 } //10
		$a_02_1 = {42 72 6f 77 73 65 72 48 65 6c 70 65 72 2e 64 6c 6c 90 02 04 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 90 00 } //1
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*1) >=10
 
}