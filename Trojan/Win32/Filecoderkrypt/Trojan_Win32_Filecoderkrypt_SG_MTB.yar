
rule Trojan_Win32_Filecoderkrypt_SG_MTB{
	meta:
		description = "Trojan:Win32/Filecoderkrypt.SG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 f6 ff d7 81 fe ?? ?? ?? ?? 7f 12 46 8b c6 99 83 fa 01 7c ed 7f 07 3d ?? ?? ?? ?? 72 e4 } //1
		$a_03_1 = {55 8b ec 57 bf ?? ?? ?? ?? 57 ff 15 ?? ?? ?? ?? ff 75 08 ff 15 ?? ?? ?? ?? 81 c7 ?? ?? ?? ?? 81 ff ?? ?? ?? ?? 77 04 85 c0 74 de 5f 5d c3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}