
rule Trojan_Win32_Cobast_YL_MSR{
	meta:
		description = "Trojan:Win32/Cobast.YL!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {76 00 69 00 72 00 75 00 73 00 5f 00 6c 00 6f 00 61 00 64 00 2e 00 65 00 78 00 65 00 } //1 virus_load.exe
		$a_01_1 = {47 00 45 00 54 00 50 00 41 00 53 00 53 00 57 00 4f 00 52 00 44 00 31 00 } //1 GETPASSWORD1
		$a_01_2 = {52 00 45 00 50 00 4c 00 41 00 43 00 45 00 46 00 49 00 4c 00 45 00 44 00 4c 00 47 00 } //1 REPLACEFILEDLG
		$a_01_3 = {68 00 65 00 64 00 32 00 30 00 2e 00 64 00 6c 00 6c 00 } //1 hed20.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}