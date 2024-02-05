
rule Trojan_Win32_AresLdrCrypt_LK_MTB{
	meta:
		description = "Trojan:Win32/AresLdrCrypt.LK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {01 d9 32 14 01 8b 85 90 01 04 88 14 07 83 85 90 01 03 ff 01 8b 85 90 01 02 ff ff 3b 85 90 01 02 ff ff 0f 82 90 00 } //01 00 
		$a_03_1 = {89 c3 c1 e0 90 01 04 01 f8 09 d8 0f be da 80 fa 90 01 04 0f 4f de 83 c1 01 0f b6 11 01 d8 84 d2 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}