
rule VirTool_Win32_Fkeysteal_A{
	meta:
		description = "VirTool:Win32/Fkeysteal.A,SIGNATURE_TYPE_PEHSTR,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_01_0 = {40 00 2a 00 5c 00 41 00 43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 5a 00 61 00 63 00 4b 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 5a 00 65 00 72 00 6f 00 5c 00 53 00 74 00 75 00 62 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //0a 00  @*\AC:\Documents and Settings\ZacK\Desktop\Zero\Stub\Project1.vbp
		$a_01_1 = {46 00 69 00 72 00 65 00 66 00 6f 00 78 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 20 00 53 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 46 00 55 00 44 00 20 00 2d 00 20 00 43 00 6f 00 64 00 65 00 64 00 20 00 42 00 79 00 3a 00 20 00 5a 00 61 00 63 00 6b 00 } //00 00  Firefox Password Stealer FUD - Coded By: Zack
	condition:
		any of ($a_*)
 
}