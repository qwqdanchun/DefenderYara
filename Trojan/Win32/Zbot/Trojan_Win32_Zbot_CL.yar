
rule Trojan_Win32_Zbot_CL{
	meta:
		description = "Trojan:Win32/Zbot.CL,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 2e 6e 65 77 00 } //01 00 
		$a_01_1 = {26 77 76 3d 25 73 26 75 69 64 3d 25 73 26 6d 69 64 3d 25 73 26 61 62 62 72 3d 25 73 26 76 65 72 69 6e 74 3d 25 73 22 00 } //01 00  眦㵶猥甦摩┽♳業㵤猥愦扢㵲猥瘦牥湩㵴猥"
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 48 69 64 65 44 65 73 6b 74 6f 70 49 63 6f 6e 73 5c 43 6c 61 73 73 69 63 53 74 61 72 74 4d 65 6e 75 00 } //01 00 
		$a_01_3 = {48 6f 73 74 73 50 72 6f 64 75 63 74 4d 75 74 65 78 00 } //00 00  潈瑳偳潲畤瑣畍整x
	condition:
		any of ($a_*)
 
}