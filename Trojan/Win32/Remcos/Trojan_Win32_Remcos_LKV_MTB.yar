
rule Trojan_Win32_Remcos_LKV_MTB{
	meta:
		description = "Trojan:Win32/Remcos.LKV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {0f b6 0c 1a 32 8c 05 90 01 02 ff ff 8b 85 90 01 02 ff ff 88 0c 18 43 89 f8 39 9d 90 01 02 ff ff 0f 85 90 00 } //1
		$a_03_1 = {0f b6 84 35 90 01 02 ff ff 88 84 3d 90 01 02 ff ff 8b 85 90 01 02 ff ff 88 84 35 90 01 02 ff ff 47 89 f1 81 ff 90 01 02 00 00 0f 85 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}