
rule Worm_Win32_Vobfus_G{
	meta:
		description = "Worm:Win32/Vobfus.G,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_02_0 = {f5 47 00 00 00 04 90 01 0e f5 6f 00 00 00 04 90 01 0e f5 74 00 00 00 04 90 01 0e f5 6f 00 00 00 04 90 01 0e f5 20 00 00 00 90 00 } //2
		$a_03_1 = {f5 4e 00 00 00 04 90 01 0e f5 61 00 00 00 04 90 01 0e f5 6d 00 00 00 04 90 01 0e f5 65 00 00 00 90 00 } //2
		$a_01_2 = {f5 58 59 59 59 } //1
		$a_03_3 = {f4 58 fc 0d f5 00 00 00 00 04 90 01 04 90 02 02 f4 59 fc 0d f5 01 00 00 00 04 90 01 04 90 02 02 f4 59 fc 0d f5 02 00 00 00 04 90 01 04 90 02 05 f4 59 90 00 } //1
	condition:
		((#a_02_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}