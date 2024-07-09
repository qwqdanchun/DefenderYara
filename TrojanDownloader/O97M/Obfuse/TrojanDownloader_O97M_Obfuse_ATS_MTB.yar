
rule TrojanDownloader_O97M_Obfuse_ATS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.ATS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {28 22 70 40 3a 40 5c 40 6a 40 76 40 61 40 71 40 62 40 6a 40 66 40 5c 40 66 40 6c 40 66 40 67 40 72 40 7a 40 33 40 32 40 5c 40 7a 40 66 40 75 40 67 40 6e 40 2e 40 72 40 6b 40 72 40 22 29 29 } //1 ("p@:@\@j@v@a@q@b@j@f@\@f@l@f@g@r@z@3@2@\@z@f@u@g@n@.@r@k@r@"))
		$a_01_1 = {28 22 50 40 3a 40 5c 40 68 40 66 40 72 40 65 40 66 40 5c 40 63 40 68 40 6f 40 79 40 76 40 70 40 5c 40 76 40 61 40 2e 40 70 40 62 40 7a 40 22 29 29 } //1 ("P@:@\@h@f@r@e@f@\@c@h@o@y@v@p@\@v@a@.@p@b@z@"))
		$a_01_2 = {28 22 50 40 3a 40 5c 40 68 40 66 40 72 40 65 40 66 40 5c 40 63 40 68 40 6f 40 79 40 76 40 70 40 5c 40 76 40 61 40 2e 40 75 40 67 40 7a 40 79 40 22 29 29 } //1 ("P@:@\@h@f@r@e@f@\@c@h@o@y@v@p@\@v@a@.@u@g@z@y@"))
		$a_03_3 = {53 68 65 6c 6c 20 [0-06] 20 26 20 22 20 22 20 26 20 [0-08] 45 6e 64 20 53 75 62 } //1
		$a_01_4 = {28 22 6b 65 79 77 6f 72 64 73 22 29 29 } //1 ("keywords"))
		$a_03_5 = {3d 20 56 42 41 2e 43 68 72 28 [0-06] 29 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 0c 02 00 46 75 6e 63 74 69 6f 6e 20 [0-06] 28 [0-06] 29 20 41 73 20 53 74 72 69 6e 67 } //1
		$a_03_6 = {3d 20 52 65 70 6c 61 63 65 28 [0-06] 2c 20 [0-06] 2c 20 22 22 29 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1) >=7
 
}