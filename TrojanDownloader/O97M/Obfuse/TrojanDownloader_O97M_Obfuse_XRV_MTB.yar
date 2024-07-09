
rule TrojanDownloader_O97M_Obfuse_XRV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.XRV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {73 64 20 3d 20 43 68 72 28 64 66 20 2d 20 31 30 33 29 } //1 sd = Chr(df - 103)
		$a_01_1 = {73 64 28 31 37 30 29 20 26 20 73 64 28 31 38 30 29 20 26 20 73 64 28 32 30 33 29 20 26 20 73 64 28 31 33 35 29 20 26 20 73 64 28 31 35 30 29 20 26 20 73 64 28 32 30 32 29 20 26 20 73 64 28 31 33 35 29 } //1 sd(170) & sd(180) & sd(203) & sd(135) & sd(150) & sd(202) & sd(135)
		$a_01_2 = {3d 20 22 57 53 43 72 69 70 74 2e 73 68 65 6c 6c 22 } //1 = "WSCript.shell"
		$a_01_3 = {61 73 64 66 61 66 20 3d 20 22 73 64 67 66 64 73 20 63 73 64 61 20 62 66 67 6a 20 76 64 66 73 68 20 34 32 34 20 67 72 74 6a 75 79 20 76 66 64 73 6a 68 79 20 22 } //1 asdfaf = "sdgfds csda bfgj vdfsh 424 grtjuy vfdsjhy "
		$a_03_4 = {2e 52 75 6e 28 [0-0f] 2c 20 [0-0f] 29 0d 0a 45 6e 64 20 53 75 62 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}