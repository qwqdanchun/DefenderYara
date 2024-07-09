
rule Trojan_Win32_Aimlog_A{
	meta:
		description = "Trojan:Win32/Aimlog.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_02_0 = {43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 4c 00 65 00 6f 00 20 00 21 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 59 00 21 00 20 00 4a 00 61 00 63 00 6b 00 65 00 64 00 20 00 31 00 2e 00 33 00 5c 00 53 00 65 00 72 00 76 00 65 00 72 00 5c 00 ?? ?? 2e 00 76 00 62 00 70 00 } //1
		$a_02_1 = {43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 6c 00 65 00 6f 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 41 00 69 00 6d 00 20 00 4c 00 6f 00 67 00 5c 00 73 00 65 00 72 00 76 00 65 00 72 00 5c 00 ?? ?? 2e 00 76 00 62 00 70 00 } //1
		$a_02_2 = {43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 4c 00 65 00 6f 00 20 00 21 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 50 00 61 00 69 00 64 00 5c 00 53 00 65 00 72 00 76 00 65 00 72 00 5c 00 ?? ?? 2e 00 76 00 62 00 70 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=1
 
}