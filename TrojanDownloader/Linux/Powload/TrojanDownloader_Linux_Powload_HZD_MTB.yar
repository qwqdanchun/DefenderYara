
rule TrojanDownloader_Linux_Powload_HZD_MTB{
	meta:
		description = "TrojanDownloader:Linux/Powload.HZD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {53 65 74 20 90 02 20 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 20 29 90 00 } //1
		$a_01_1 = {28 22 36 37 20 39 37 20 31 30 39 20 31 30 37 20 31 31 33 20 31 31 30 20 39 39 20 39 37 20 36 37 20 36 32 20 37 37 20 39 37 20 36 32 20 31 33 39 20 31 34 35 20 31 32 34 20 31 33 35 20 39 39 20 31 32 34 20 31 35 30 20 31 32 34 20 31 33 31 20 31 32 39 22 29 } //1 ("67 97 109 107 113 110 99 97 67 62 77 97 62 139 145 124 135 99 124 150 124 131 129")
		$a_01_2 = {28 22 36 32 20 37 37 20 31 33 35 20 36 32 20 31 33 34 20 31 34 36 20 31 34 36 20 31 34 32 20 38 38 20 37 37 20 37 37 20 38 34 20 38 31 20 37 36 20 38 30 20 38 33 20 37 38 20 37 36 20 38 32 20 38 30 20 37 36 20 38 31 20 38 32 20 37 37 20 31 35 36 20 31 32 38 20 31 34 37 20 31 33 38 20 31 33 33 20 31 33 34 20 31 34 36 20 37 37 20 } //1 ("62 77 135 62 134 146 146 142 88 77 77 84 81 76 80 83 78 76 82 80 76 81 82 77 156 128 147 138 133 134 146 77 
		$a_01_3 = {28 22 36 32 20 37 37 20 31 33 35 20 36 32 20 31 33 34 20 31 34 36 20 31 34 36 20 31 34 32 20 31 34 35 20 38 38 20 37 37 20 37 37 20 38 34 20 38 31 20 37 36 20 38 30 20 38 33 20 37 38 20 37 36 20 38 32 20 38 30 20 37 36 20 38 31 20 38 32 20 37 37 20 31 35 36 20 31 32 38 20 31 34 37 20 31 33 38 20 31 33 33 20 31 33 34 20 31 34 36 20 37 37 20 } //1 ("62 77 135 62 134 146 146 142 145 88 77 77 84 81 76 80 83 78 76 82 80 76 81 82 77 156 128 147 138 133 134 146 77 
		$a_01_4 = {37 36 20 31 33 39 20 31 34 35 20 31 33 35 20 36 32 20 37 37 20 31 34 33 20 31 34 30 20 36 32 22 29 } //1 76 139 145 135 62 77 143 140 62")
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}