
rule Trojan_Win32_Tnega_QW_MTB{
	meta:
		description = "Trojan:Win32/Tnega.QW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 04 00 00 "
		
	strings :
		$a_81_0 = {6f 70 63 5f 70 61 63 6b 61 67 65 5f 77 72 69 74 65 } //3 opc_package_write
		$a_01_1 = {4d 65 73 73 61 67 65 42 6f 78 57 00 47 65 74 41 63 74 69 76 65 57 69 6e 64 6f 77 00 47 65 74 4c 61 73 74 41 63 74 69 76 65 50 6f 70 75 70 } //5 敍獳条䉥硯W敇䅴瑣癩坥湩潤w敇䱴獡䅴瑣癩健灯灵
		$a_01_2 = {47 65 74 55 73 65 72 4f 62 6a 65 63 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 57 00 00 00 47 65 74 50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 61 74 69 6f 6e 00 41 } //5
		$a_01_3 = {65 2b 30 30 30 00 00 00 31 23 53 4e 41 4e } //5
	condition:
		((#a_81_0  & 1)*3+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5) >=18
 
}