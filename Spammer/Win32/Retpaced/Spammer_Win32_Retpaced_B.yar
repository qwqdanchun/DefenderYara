
rule Spammer_Win32_Retpaced_B{
	meta:
		description = "Spammer:Win32/Retpaced.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 2e 00 32 00 33 00 34 00 2e 00 36 00 36 00 2e 00 31 00 34 00 33 00 2f 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  http://1.234.66.143/svchost.exe
		$a_01_1 = {5c 00 49 00 6e 00 6a 00 65 00 63 00 74 00 6f 00 72 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 } //01 00  \Injector\Project
		$a_03_2 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}