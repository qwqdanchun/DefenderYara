
rule Trojan_Win32_Zlob_B{
	meta:
		description = "Trojan:Win32/Zlob.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {46 6c 73 53 65 74 56 61 6c 75 65 } //1 FlsSetValue
		$a_00_1 = {65 00 78 00 00 00 00 00 70 00 6c 00 6f 00 72 00 65 00 72 00 00 00 00 00 2e 00 65 00 78 00 65 } //1
		$a_02_2 = {0f be c0 83 e8 2f 90 09 0e 00 85 ?? 74 ?? 8a ?? 3c ?? ?? ?? 3c } //1
		$a_02_3 = {66 8b 08 83 c0 02 66 3b ce 75 f5 2b c2 d1 f8 50 8d 94 24 b8 00 00 00 52 8d 8c 24 a0 00 00 00 e8 ?? ?? ff ff 6a 04 68 ?? ?? 01 10 8d 4c 24 4c 89 7c 24 64 89 74 24 60 66 89 74 24 50 e8 ?? ?? ff ff 6a 06 68 ?? ?? 01 10 8d 4c 24 14 89 7c 24 2c 89 74 24 28 66 89 74 24 18 e8 ?? ?? ff ff 6a 02 68 ?? ?? 01 10 8d 4c 24 30 89 7c 24 48 89 74 24 44 66 89 74 24 34 e8 ?? ?? ff ff } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}