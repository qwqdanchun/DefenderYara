
rule VirTool_Win32_Obfuscator_HG{
	meta:
		description = "VirTool:Win32/Obfuscator.HG,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 00 f0 ff ff 66 81 38 4d 5a 74 03 48 eb f1 } //01 00 
		$a_01_1 = {31 07 af e2 fb } //02 00 
		$a_03_2 = {ac 3c 41 72 06 3c 5a 77 02 04 20 aa e2 f2 81 7d 90 01 01 6b 65 72 6e 75 c7 81 7d 90 01 01 65 6c 33 32 75 be 81 7d 90 01 01 2e 64 6c 6c 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}