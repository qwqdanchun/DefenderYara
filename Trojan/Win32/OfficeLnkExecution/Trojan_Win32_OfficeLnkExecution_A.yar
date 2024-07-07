
rule Trojan_Win32_OfficeLnkExecution_A{
	meta:
		description = "Trojan:Win32/OfficeLnkExecution.A,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {76 00 65 00 72 00 63 00 6c 00 73 00 69 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_1 = {2f 00 63 00 20 00 7b 00 30 00 30 00 30 00 32 00 31 00 34 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 2d 00 30 00 30 00 30 00 30 00 2d 00 63 00 30 00 30 00 30 00 2d 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 34 00 36 00 7d 00 } //1 /c {00021401-0000-0000-c000-000000000046}
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}