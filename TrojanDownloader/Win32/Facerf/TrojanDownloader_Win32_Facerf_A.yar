
rule TrojanDownloader_Win32_Facerf_A{
	meta:
		description = "TrojanDownloader:Win32/Facerf.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {2a 65 78 65 2d 65 78 65 2a } //1 *exe-exe*
		$a_00_1 = {67 73 70 63 32 2e 65 78 65 00 } //1 獧捰⸲硥e
		$a_03_2 = {3c 01 0f 85 90 01 04 68 b8 0b 00 00 e8 90 00 } //1
		$a_03_3 = {3d 00 c8 00 00 0f 86 90 01 04 6a 06 90 00 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*2) >=4
 
}