
rule Trojan_Win32_Dantmil_C{
	meta:
		description = "Trojan:Win32/Dantmil.C,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 c4 0c 8d 45 d4 50 8d 45 d8 50 6a 02 e8 90 01 04 83 c4 0c c7 45 fc 06 00 00 00 68 90 01 04 e8 90 01 04 8b d0 8d 4d bc e8 90 01 04 68 90 01 04 e8 90 01 04 8b d0 8d 4d b8 90 00 } //01 00 
		$a_03_1 = {8d 85 fc fe ff ff 50 6a 10 68 80 08 00 00 e8 90 01 04 83 c4 1c c7 85 f4 fe ff ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}