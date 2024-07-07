
rule Trojan_Win32_RegNegotiate_A{
	meta:
		description = "Trojan:Win32/RegNegotiate.A,SIGNATURE_TYPE_CMDHSTR_EXT,64 00 15 00 05 00 00 "
		
	strings :
		$a_00_0 = {48 00 4b 00 4c 00 4d 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 50 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 73 00 5c 00 57 00 44 00 69 00 67 00 65 00 73 00 74 00 } //10 HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest
		$a_00_1 = {2f 00 76 00 20 00 4e 00 65 00 67 00 6f 00 74 00 69 00 61 00 74 00 65 00 } //10 /v Negotiate
		$a_00_2 = {2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 30 00 78 00 31 00 } //1 /t REG_DWORD /d 0x1
		$a_00_3 = {2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 31 00 } //1 /t REG_DWORD /d 1
		$a_00_4 = {2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 30 00 78 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 31 00 } //1 /t REG_DWORD /d 0x00000001
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=21
 
}