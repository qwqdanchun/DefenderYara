
rule TrojanDownloader_BAT_Reline_SIBA_MTB{
	meta:
		description = "TrojanDownloader:BAT/Reline.SIBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,3f 00 3e 00 0a 00 00 "
		
	strings :
		$a_02_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 90 02 60 2f 00 56 00 6f 00 64 00 6f 00 4b 00 61 00 6e 00 61 00 6c 00 46 00 6f 00 72 00 6d 00 73 00 2e 00 64 00 6c 00 6c 00 90 00 } //20
		$a_02_1 = {68 74 74 70 73 3a 2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f 90 02 60 2f 56 6f 64 6f 4b 61 6e 61 6c 46 6f 72 6d 73 2e 64 6c 6c 90 00 } //20
		$a_02_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 90 02 60 2f 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //20
		$a_02_3 = {68 74 74 70 73 3a 2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f 90 02 60 2f 90 02 10 2e 65 78 65 90 00 } //20
		$a_02_4 = {56 00 6f 00 64 00 6f 00 4b 00 61 00 6e 00 61 00 6c 00 46 00 6f 00 72 00 6d 00 73 00 2e 00 90 02 10 4b 00 61 00 6e 00 61 00 6c 00 90 00 } //20
		$a_02_5 = {56 6f 64 6f 4b 61 6e 61 6c 46 6f 72 6d 73 2e 90 02 10 4b 61 6e 61 6c 90 00 } //20
		$a_80_6 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //DownloadData  1
		$a_02_7 = {59 00 61 00 6e 00 64 00 65 00 78 00 90 02 10 41 00 70 00 69 00 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_02_8 = {59 61 6e 64 65 78 90 02 10 41 70 69 2e 65 78 65 90 00 } //1
		$a_80_9 = {4e 45 54 53 65 63 75 72 65 } //NETSecure  1
	condition:
		((#a_02_0  & 1)*20+(#a_02_1  & 1)*20+(#a_02_2  & 1)*20+(#a_02_3  & 1)*20+(#a_02_4  & 1)*20+(#a_02_5  & 1)*20+(#a_80_6  & 1)*1+(#a_02_7  & 1)*1+(#a_02_8  & 1)*1+(#a_80_9  & 1)*1) >=62
 
}