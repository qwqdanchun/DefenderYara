
rule HackTool_Win64_CobaltStrike_K{
	meta:
		description = "HackTool:Win64/CobaltStrike.K,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 f7 e1 41 8b c1 c1 ea 02 41 ff c1 6b d2 0d 2b c2 } //00 00 
	condition:
		any of ($a_*)
 
}