
rule Trojan_Win32_Whispergate_J_dha{
	meta:
		description = "Trojan:Win32/Whispergate.J!dha,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_00_0 = {73 68 75 74 64 6f 77 6e 20 2d 73 20 2d 66 20 2d 74 20 } //0a 00 
		$a_01_1 = {c7 04 24 64 50 40 00 e8 b6 25 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}