
rule Trojan_Win32_Redline_YAC_MTB{
	meta:
		description = "Trojan:Win32/Redline.YAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {31 45 fc 33 c5 50 89 65 e8 ff 75 f8 8b 45 fc c7 45 fc fe ff ff ff 89 45 f8 8d 45 f0 64 a3 00 00 00 00 } //1
		$a_03_1 = {ff d7 80 b6 ?? ?? ?? ?? ?? ff d7 80 86 ?? ?? ?? ?? ?? ff d7 80 b6 ?? ?? ?? ?? ?? ff d7 80 86 ?? ?? ?? ?? ?? ff d7 80 86 ?? ?? ?? ?? ?? ff d7 80 86 ?? ?? ?? ?? ?? 46 81 fe 00 76 03 00 0f 82 ?? ?? ?? ?? 5f 5e c3 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}