
rule HackTool_Win32_Mimikatz_PTH_{
	meta:
		description = "HackTool:Win32/Mimikatz.PTH!!Mikatz.gen!D,SIGNATURE_TYPE_ARHSTR_EXT,0b 00 0b 00 04 00 00 0a 00 "
		
	strings :
		$a_00_0 = {73 65 6b 75 72 6c 73 61 3a 3a 70 74 68 } //01 00  sekurlsa::pth
		$a_00_1 = {2f 75 73 65 72 3a } //01 00  /user:
		$a_00_2 = {2f 64 6f 6d 61 69 6e 3a } //01 00  /domain:
		$a_00_3 = {2f 6e 74 6c 6d 3a } //00 00  /ntlm:
	condition:
		any of ($a_*)
 
}