
rule TrojanDownloader_Linux_Powload_HAZ_MTB{
	meta:
		description = "TrojanDownloader:Linux/Powload.HAZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 } //1 Public Sub Document_Open()
		$a_01_1 = {3d 20 22 4d 22 20 2b 20 22 53 22 20 2b 20 22 58 4d 22 20 2b 20 22 4c 32 22 20 2b 20 22 2e 44 4f 22 20 2b 20 22 4d 22 20 2b 20 22 44 6f 22 20 2b 20 22 63 75 22 20 2b 20 22 6d 22 20 2b 20 22 65 6e 74 22 } //1 = "M" + "S" + "XM" + "L2" + ".DO" + "M" + "Do" + "cu" + "m" + "ent"
		$a_03_2 = {53 65 74 20 [0-10] 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-10] 29 2e 43 72 65 61 74 65 45 6c 65 6d 65 6e 74 28 22 62 36 22 20 2b 20 22 34 22 29 } //1
		$a_03_3 = {53 65 74 20 [0-10] 20 3d 20 [0-10] 2e 43 6f 6e 6e 65 63 74 53 65 72 76 65 72 28 29 } //1
		$a_01_4 = {2e 53 65 63 75 72 69 74 79 5f 2e 49 6d 70 65 72 73 6f 6e 61 74 69 6f 6e 4c 65 76 65 6c 20 3d 20 38 37 34 37 32 34 20 2d 20 38 37 34 37 32 31 } //1 .Security_.ImpersonationLevel = 874724 - 874721
		$a_01_5 = {3d 20 22 57 22 20 2b 20 22 69 22 20 2b 20 22 6e 22 20 2b 20 22 33 22 20 2b 20 22 32 5f 22 20 2b 20 22 50 72 22 20 2b 20 22 6f 22 20 2b 20 22 63 22 20 2b 20 22 65 22 20 2b 20 22 73 22 20 2b 20 22 73 22 } //1 = "W" + "i" + "n" + "3" + "2_" + "Pr" + "o" + "c" + "e" + "s" + "s"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}