
rule VirTool_BAT_Binder_B{
	meta:
		description = "VirTool:BAT/Binder.B,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 56 4b 69 6c 6c 65 72 73 69 6e 42 69 6e 64 65 72 00 41 56 4b 69 6c 6c 65 72 73 77 6f 42 69 6e 64 65 72 00 69 6e 6a 65 63 74 69 6f 6e 77 6f 62 69 6e 64 65 72 00 69 6e 6a 65 63 74 69 6f 6e 69 6e 62 69 6e 64 65 72 00 6d 73 67 62 6f 78 77 69 74 68 6f 75 74 } //01 00 
		$a_01_1 = {41 6e 74 69 56 69 72 74 75 61 6c 50 43 00 41 6e 74 69 56 69 72 74 75 61 6c 42 6f 78 00 41 6e 74 69 56 6d 57 61 72 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}