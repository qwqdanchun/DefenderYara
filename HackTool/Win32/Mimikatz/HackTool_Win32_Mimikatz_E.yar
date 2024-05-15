
rule HackTool_Win32_Mimikatz_E{
	meta:
		description = "HackTool:Win32/Mimikatz.E,SIGNATURE_TYPE_PEHSTR,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 6c 6f 67 2e 67 65 6e 74 69 6c 6b 69 77 69 2e 63 6f 6d 2f 6d 69 6d 69 6b 61 74 7a } //01 00  blog.gentilkiwi.com/mimikatz
		$a_01_1 = {73 61 6d 65 6e 75 6d 65 72 61 74 65 64 6f 6d 61 69 6e 73 69 6e 73 61 6d 73 65 72 76 65 72 } //01 00  samenumeratedomainsinsamserver
		$a_01_2 = {6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 28 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 6c 00 69 00 6e 00 65 00 29 00 20 00 23 00 20 00 25 00 73 00 } //01 00  mimikatz(commandline) # %s
		$a_01_3 = {6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 20 00 23 00 } //01 00  mimikatz #
		$a_01_4 = {6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 20 00 90 00 02 00 02 00 2e 00 90 00 02 00 02 00 2e 00 90 00 02 00 02 00 20 00 78 00 36 00 34 00 20 00 28 00 6f 00 65 00 2e 00 65 00 6f 00 29 00 } //01 00 
		$a_01_5 = {67 00 65 00 6e 00 74 00 69 00 6c 00 6b 00 69 00 77 00 69 00 } //01 00  gentilkiwi
		$a_01_6 = {5f 4e 65 74 53 65 72 76 65 72 54 72 75 73 74 50 61 73 73 77 6f 72 64 73 47 65 74 } //00 00  _NetServerTrustPasswordsGet
		$a_01_7 = {00 67 16 } //00 00 
	condition:
		any of ($a_*)
 
}