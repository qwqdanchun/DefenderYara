
rule TrojanSpy_Win32_Bafi_H{
	meta:
		description = "TrojanSpy:Win32/Bafi.H,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_03_0 = {0f b6 45 ff 02 98 90 01 04 90 03 02 01 0f b6 8a 45 ff fe c0 0f b6 c0 25 0f 00 00 80 79 05 90 00 } //1
		$a_03_1 = {8a 44 24 18 0f b6 d0 02 9a 90 01 04 04 01 0f b6 c0 25 0f 00 00 80 79 05 90 00 } //1
		$a_01_2 = {01 09 0b 34 0b 83 25 1b 0c 12 c7 f8 d4 8e eb 8d } //10
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*10) >=11
 
}