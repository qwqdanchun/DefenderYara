
rule VirTool_Win32_Ninject_C{
	meta:
		description = "VirTool:Win32/Ninject.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f b6 04 10 32 03 88 01 8d 85 90 01 04 ff 90 00 } //01 00 
		$a_03_1 = {0f b6 04 10 32 03 88 01 8b 45 90 01 01 8b 8d 90 01 04 01 c1 90 01 25 99 f7 3e 90 00 } //00 00 
		$a_00_2 = {5d } //04 00  ]
	condition:
		any of ($a_*)
 
}