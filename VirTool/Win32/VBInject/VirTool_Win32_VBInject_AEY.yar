
rule VirTool_Win32_VBInject_AEY{
	meta:
		description = "VirTool:Win32/VBInject.AEY,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {bf 74 23 11 00 c7 43 34 04 00 00 00 8b 43 34 3b c7 89 85 54 fe ff ff 0f 8f 08 01 00 00 dd 05 90 01 02 40 00 8b 0b d9 e1 df e0 a8 0d 0f 85 90 00 } //01 00 
		$a_03_1 = {8b 48 54 c7 81 90 01 02 00 00 f9 40 3a ba 8b 48 54 c7 81 90 01 02 00 00 bd a8 e4 bd 8b 48 54 c7 81 90 01 02 00 00 8d 25 59 ce 90 00 } //00 00 
		$a_00_2 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}