
rule Trojan_Win32_Qbot_F{
	meta:
		description = "Trojan:Win32/Qbot.F,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 61 00 73 00 6b 00 45 00 73 00 62 00 79 00 64 00 46 00 6c 00 61 00 73 00 68 00 } //01 00 
		$a_01_1 = {62 00 6c 00 61 00 63 00 6b 00 6c 00 69 00 73 00 74 00 73 00 7a 00 74 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 72 00 65 00 64 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 31 00 33 00 61 00 6e 00 64 00 6d 00 6f 00 73 00 74 00 73 00 79 00 73 00 74 00 65 00 6d 00 73 00 62 00 6f 00 6f 00 62 00 79 00 2d 00 74 00 72 00 61 00 70 00 70 00 65 00 64 00 66 00 72 00 6f 00 6d 00 } //01 00 
		$a_01_2 = {62 00 61 00 72 00 6e 00 65 00 79 00 6a 00 4e 00 47 00 45 00 33 00 77 00 61 00 73 00 54 00 68 00 69 00 73 00 63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 6c 00 65 00 64 00 52 00 } //01 00 
		$a_01_3 = {53 00 62 00 75 00 74 00 66 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 30 00 48 00 41 00 64 00 61 00 6b 00 6f 00 74 00 61 00 54 00 68 00 65 00 72 00 65 00 6f 00 66 00 } //00 00 
	condition:
		any of ($a_*)
 
}