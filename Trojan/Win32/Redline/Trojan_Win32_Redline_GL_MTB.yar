
rule Trojan_Win32_Redline_GL_MTB{
	meta:
		description = "Trojan:Win32/Redline.GL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {01 d0 0f b6 08 8b 45 90 01 01 ba 90 01 04 f7 75 14 8b 45 90 01 01 01 d0 0f b6 00 89 c2 89 d0 c1 e2 90 01 01 29 d0 c1 e0 90 01 01 89 c3 8b 55 90 01 01 8b 45 90 01 01 01 d0 31 d9 89 ca 88 10 83 45 90 00 } //01 00 
		$a_01_1 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //00 00  VirtualProtect
	condition:
		any of ($a_*)
 
}