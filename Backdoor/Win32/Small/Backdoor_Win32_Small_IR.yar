
rule Backdoor_Win32_Small_IR{
	meta:
		description = "Backdoor:Win32/Small.IR,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {2c 00 43 57 44 45 00 4a 45 43 58 5a 00 44 00 51 00 54 00 43 00 52 00 53 00 45 00 3a 00 5b 00 5d 00 } //01 00 
		$a_01_1 = {6e 41 74 6c 41 78 57 69 6e 00 53 68 65 6c 6c 2e 45 78 70 6c 6f 72 65 72 2e 31 00 4d 6f 7a 69 6c 6c 61 2e 42 72 6f 77 73 65 72 2e 31 00 41 74 6c 41 78 47 65 74 43 6f 6e 74 72 6f 6c 00 41 74 6c 41 78 57 69 6e 49 6e 69 74 00 41 54 4c 2e 44 4c 4c } //01 00 
		$a_00_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_00_3 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //01 00  InternetOpenUrlA
		$a_00_4 = {53 68 65 6c 6c 45 78 65 63 75 74 65 45 78 41 } //01 00  ShellExecuteExA
		$a_01_5 = {46 53 54 53 57 20 00 4c 4c 44 54 20 00 4c 4c 44 54 20 77 6f 72 64 00 4c 4d 53 57 20 00 4c 4d 53 57 20 77 6f 72 64 } //00 00  卆協⁗䰀䑌⁔䰀䑌⁔潷摲䰀卍⁗䰀卍⁗潷摲
	condition:
		any of ($a_*)
 
}