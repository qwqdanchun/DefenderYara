
rule Trojan_Win32_Fauppod_MG_MTB{
	meta:
		description = "Trojan:Win32/Fauppod.MG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_01_0 = {55 62 79 63 6f 6d 69 54 72 67 79 62 } //2 UbycomiTrgyb
		$a_01_1 = {50 6e 75 62 79 45 63 66 76 67 62 68 } //2 PnubyEcfvgbh
		$a_01_2 = {50 6e 75 79 62 44 74 76 79 62 } //2 PnuybDtvyb
		$a_01_3 = {57 61 69 74 46 6f 72 53 69 6e 67 6c 65 4f 62 6a 65 63 74 45 78 } //1 WaitForSingleObjectEx
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1) >=7
 
}