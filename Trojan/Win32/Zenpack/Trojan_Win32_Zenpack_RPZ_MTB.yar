
rule Trojan_Win32_Zenpack_RPZ_MTB{
	meta:
		description = "Trojan:Win32/Zenpack.RPZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 c0 80 bd 06 ff ff ff 2e 0f 94 c1 8b 95 e4 fe ff ff 80 3a 54 0f 94 c5 20 e9 f6 c1 01 89 85 f0 fe ff ff } //01 00 
		$a_01_1 = {ff d0 83 ec 0c 8d 8d fc fe ff ff c7 85 f8 fe ff ff ff ff ff ff 81 c1 03 00 00 00 80 bd ff fe ff ff 53 89 85 e8 fe ff ff 89 8d e4 fe ff ff } //00 00 
	condition:
		any of ($a_*)
 
}