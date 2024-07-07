
rule Trojan_Win32_Nibtse_A{
	meta:
		description = "Trojan:Win32/Nibtse.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {6d 00 73 00 68 00 74 00 61 00 90 02 08 20 00 68 00 74 00 74 00 70 00 90 02 02 3a 00 2f 00 2f 00 70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 61 00 77 00 2f 00 90 2f 10 00 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Nibtse_A_2{
	meta:
		description = "Trojan:Win32/Nibtse.A,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 74 00 6e 00 20 00 } //1 schtasks /create /tn 
		$a_02_1 = {20 00 2f 00 74 00 72 00 20 00 6d 00 73 00 68 00 74 00 61 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 29 03 00 2e 00 90 29 03 00 2e 00 90 29 03 00 2e 00 90 29 03 00 3a 00 90 29 05 00 2f 00 90 02 20 20 00 2f 00 73 00 63 00 20 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}
rule Trojan_Win32_Nibtse_A_3{
	meta:
		description = "Trojan:Win32/Nibtse.A,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 90 02 05 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 90 00 } //1
		$a_00_1 = {6d 00 73 00 68 00 74 00 61 00 20 00 76 00 62 00 73 00 63 00 72 00 69 00 70 00 74 00 3a 00 43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //1 mshta vbscript:CreateObject
		$a_00_2 = {2e 00 52 00 75 00 6e 00 28 00 } //1 .Run(
		$a_00_3 = {2f 00 2f 00 70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 61 00 77 00 2f 00 } //1 //pastebin.com/raw/
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}
rule Trojan_Win32_Nibtse_A_4{
	meta:
		description = "Trojan:Win32/Nibtse.A,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_02_0 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 90 02 05 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 90 00 } //1
		$a_00_1 = {20 00 2f 00 73 00 63 00 20 00 4d 00 49 00 4e 00 55 00 54 00 45 00 20 00 } //1  /sc MINUTE 
		$a_02_2 = {20 00 2f 00 74 00 72 00 20 00 6d 00 73 00 68 00 74 00 61 00 90 02 08 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 61 00 77 00 2f 00 90 00 } //1
		$a_02_3 = {20 00 2f 00 74 00 72 00 20 00 6d 00 73 00 68 00 74 00 61 00 90 02 08 20 00 68 00 74 00 74 00 70 00 3a 00 5c 00 5c 00 70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 5c 00 72 00 61 00 77 00 5c 00 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=3
 
}
rule Trojan_Win32_Nibtse_A_5{
	meta:
		description = "Trojan:Win32/Nibtse.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {6d 00 73 00 68 00 74 00 61 00 20 00 76 00 62 00 73 00 63 00 72 00 69 00 70 00 74 00 3a 00 43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 28 00 57 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 29 00 2e 00 52 00 75 00 6e 00 28 00 6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 20 00 68 00 74 00 74 00 70 00 90 02 02 3a 00 2f 00 2f 00 70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 61 00 77 00 2f 00 90 2f 10 00 2c 00 30 00 2c 00 74 00 72 00 75 00 65 00 29 00 28 00 77 00 69 00 6e 00 64 00 6f 00 77 00 2e 00 63 00 6c 00 6f 00 73 00 65 00 29 00 90 00 } //1
		$a_02_1 = {5c 00 6d 00 73 00 68 00 74 00 61 00 2e 00 45 00 58 00 45 00 20 00 76 00 62 00 73 00 63 00 72 00 69 00 70 00 74 00 3a 00 43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 28 00 57 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 29 00 2e 00 52 00 75 00 6e 00 28 00 6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 20 00 68 00 74 00 74 00 70 00 90 02 02 3a 00 2f 00 2f 00 70 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 61 00 77 00 2f 00 90 2f 10 00 2c 00 30 00 2c 00 74 00 72 00 75 00 65 00 29 00 28 00 77 00 69 00 6e 00 64 00 6f 00 77 00 2e 00 63 00 6c 00 6f 00 73 00 65 00 29 00 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}