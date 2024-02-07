
rule VirTool_WinNT_Rootkitdrv_AI{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.AI,SIGNATURE_TYPE_PEHSTR_EXT,12 00 11 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {30 04 16 80 7d 10 00 74 09 8d 45 08 50 e8 } //05 00 
		$a_01_1 = {8b 7d 0c 0f b6 44 3a ff 89 45 08 8d 45 08 50 e8 } //03 00 
		$a_01_2 = {4b 65 4e 75 6d 62 65 72 50 72 6f 63 65 73 73 6f 72 73 } //03 00  KeNumberProcessors
		$a_01_3 = {4b 65 47 65 74 43 75 72 72 65 6e 74 49 72 71 6c } //01 00  KeGetCurrentIrql
		$a_01_4 = {5c 00 3f 00 3f 00 5c 00 00 00 5c 00 3f 00 3f 00 5c 00 50 00 48 00 59 00 53 00 49 00 43 00 41 00 4c 00 44 00 52 00 49 00 56 00 45 } //01 00 
		$a_01_5 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 00 00 77 00 69 00 6e 00 6c } //00 00 
	condition:
		any of ($a_*)
 
}