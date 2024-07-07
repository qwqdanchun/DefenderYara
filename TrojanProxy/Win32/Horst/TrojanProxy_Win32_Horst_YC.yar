
rule TrojanProxy_Win32_Horst_YC{
	meta:
		description = "TrojanProxy:Win32/Horst.YC,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {83 c0 18 50 6a 90 01 01 68 90 01 03 00 8d 8d 90 01 02 ff ff e8 90 01 02 ff ff 83 c0 18 50 6a 04 68 90 01 03 00 8d 8d 90 01 02 ff ff e8 90 01 02 ff ff 83 c0 18 50 8d 85 90 01 02 ff ff 50 90 00 } //1
		$a_03_1 = {b9 03 01 00 00 8b f0 8d bd 90 01 02 ff ff f3 a5 68 90 01 03 00 8d 90 01 03 ff ff 90 00 } //1
		$a_03_2 = {0f be 4d 08 0f be 55 fe 33 ca 88 4d ff 6a 00 ff 15 90 01 03 00 6a 00 ff 15 90 01 03 00 90 00 } //1
		$a_03_3 = {8b 55 0c 03 55 14 8a 02 88 45 fe 6a 00 ff 15 90 01 03 00 6a 00 ff 15 90 01 03 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}