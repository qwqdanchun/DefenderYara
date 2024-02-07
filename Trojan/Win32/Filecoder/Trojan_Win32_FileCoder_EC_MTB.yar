
rule Trojan_Win32_FileCoder_EC_MTB{
	meta:
		description = "Trojan:Win32/FileCoder.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5f 5f 65 6d 70 74 79 2e 52 65 4e 61 4d 65 44 } //01 00  __empty.ReNaMeD
		$a_01_1 = {41 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 62 65 6c 6f 6e 67 20 74 6f 20 75 73 21 } //01 00  All your files are belong to us!
		$a_01_2 = {62 69 6e 5f 74 65 73 74 73 2e 6c 6f 67 } //01 00  bin_tests.log
		$a_01_3 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 6d 00 69 00 6d 00 69 00 63 00 2e 00 62 00 61 00 74 00 } //01 00  cmd.exe /c mimic.bat
		$a_01_4 = {6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 20 00 6d 00 69 00 6d 00 69 00 63 00 2e 00 68 00 74 00 61 00 } //01 00  mshta.exe mimic.hta
		$a_01_5 = {6d 00 69 00 6d 00 69 00 63 00 2e 00 62 00 61 00 74 00 65 00 6e 00 64 00 } //00 00  mimic.batend
	condition:
		any of ($a_*)
 
}