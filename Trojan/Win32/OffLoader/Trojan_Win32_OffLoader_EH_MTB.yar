
rule Trojan_Win32_OffLoader_EH_MTB{
	meta:
		description = "Trojan:Win32/OffLoader.EH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 09 00 "
		
	strings :
		$a_01_0 = {66 00 6c 00 6f 00 63 00 6b 00 73 00 63 00 68 00 6f 00 6f 00 6c 00 2e 00 73 00 69 00 74 00 65 00 2f 00 65 00 6e 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 38 00 34 00 38 00 26 00 74 00 3d 00 34 00 36 00 33 00 37 00 33 00 30 00 33 00 31 00 26 00 74 00 69 00 74 00 6c 00 65 00 3d 00 51 00 58 00 52 00 6f 00 5a } //01 00 
		$a_01_1 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65 00 } //00 00  server\share
	condition:
		any of ($a_*)
 
}