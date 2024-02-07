
rule VirTool_Win64_Bacrez_A_MTB{
	meta:
		description = "VirTool:Win64/Bacrez.A!MTB,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 70 63 53 74 72 69 6e 67 46 72 65 65 } //01 00  RpcStringFree
		$a_01_1 = {52 70 63 42 69 6e 64 69 6e 67 46 72 65 65 } //01 00  RpcBindingFree
		$a_01_2 = {6e 61 6d 65 64 70 69 70 65 } //01 00  namedpipe
		$a_01_3 = {70 69 70 65 6e 61 6d 65 } //01 00  pipename
		$a_01_4 = {68 6f 73 74 6e 61 6d 65 } //01 00  hostname
		$a_01_5 = {65 78 65 63 75 74 65 77 69 74 68 74 6f 6b 65 6e } //01 00  executewithtoken
		$a_01_6 = {73 68 75 74 64 6f 77 6e } //00 00  shutdown
	condition:
		any of ($a_*)
 
}