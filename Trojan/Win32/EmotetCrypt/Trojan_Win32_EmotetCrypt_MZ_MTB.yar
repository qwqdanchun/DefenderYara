
rule Trojan_Win32_EmotetCrypt_MZ_MTB{
	meta:
		description = "Trojan:Win32/EmotetCrypt.MZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b 55 c8 83 c2 01 89 55 c8 83 7d c8 04 7d 16 c7 45 90 02 05 8b 90 02 02 2b 90 02 02 0f 90 02 03 89 45 90 01 03 c7 45 90 02 05 8d 90 02 02 89 90 02 02 8b 90 02 02 8b 02 0d 90 02 04 8b 90 02 02 81 90 02 05 0f 90 02 02 8b 90 02 02 2b d0 89 90 02 04 8b 90 02 02 8b 90 02 02 8b 90 02 02 89 90 02 02 e9 90 00 } //1
		$a_02_1 = {55 8b ec 83 90 02 02 c7 45 90 02 05 8b 90 02 02 33 90 02 02 89 90 02 02 c7 45 90 02 05 c7 45 90 02 05 c7 45 90 02 05 8b 90 02 02 83 90 02 02 0f 90 02 03 8b 90 02 02 99 f7 90 01 01 89 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}