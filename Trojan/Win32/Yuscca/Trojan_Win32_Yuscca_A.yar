
rule Trojan_Win32_Yuscca_A{
	meta:
		description = "Trojan:Win32/Yuscca.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 02 00 05 00 00 "
		
	strings :
		$a_00_0 = {43 68 65 77 42 61 63 63 61 } //1 ChewBacca
		$a_01_1 = {75 6d 65 6d 73 63 61 6e 00 } //1
		$a_01_2 = {75 73 67 73 63 61 6e 00 } //1 獵獧慣n
		$a_01_3 = {72 65 63 76 64 61 74 61 2e 70 68 70 00 } //1
		$a_01_4 = {5b 30 2d 39 5d 7b 31 33 2c 31 39 7d 3d 5b 30 2d 39 5d 7b 35 2c 35 30 7d 5c 3f } //1 [0-9]{13,19}=[0-9]{5,50}\?
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=2
 
}