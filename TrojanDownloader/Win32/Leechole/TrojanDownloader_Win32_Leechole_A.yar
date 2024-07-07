
rule TrojanDownloader_Win32_Leechole_A{
	meta:
		description = "TrojanDownloader:Win32/Leechole.A,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 05 00 00 "
		
	strings :
		$a_03_0 = {63 6e 74 2e 70 68 70 90 03 01 01 00 3f 90 00 } //10
		$a_03_1 = {67 65 74 2e 70 68 70 3f 65 3d 90 02 04 26 74 63 3d 90 02 18 26 75 69 64 3d 90 00 } //10
		$a_01_2 = {2e 65 78 65 00 2e 63 6e 74 00 75 69 64 00 73 7a 00 75 00 74 63 00 } //10 攮數⸀湣t極d穳甀琀c
		$a_03_3 = {26 72 64 3d 90 0a 20 00 2e 65 78 65 90 03 01 01 22 00 90 03 05 01 63 6f 70 79 00 00 90 00 } //1
		$a_01_4 = {63 6f 70 79 00 26 72 64 3d } //1
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_01_2  & 1)*10+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=21
 
}