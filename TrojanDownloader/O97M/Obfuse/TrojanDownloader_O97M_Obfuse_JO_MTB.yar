
rule TrojanDownloader_O97M_Obfuse_JO_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {52 65 70 6c 61 63 65 28 90 02 0a 2c 20 90 02 0a 2c 20 22 22 29 90 00 } //01 00 
		$a_01_1 = {40 3a 40 5c 40 68 40 66 40 72 40 65 40 66 40 5c 40 63 40 68 40 6f 40 79 40 76 40 70 40 5c 40 76 40 61 40 2e 40 75 40 67 40 7a 40 79 40 } //01 00  @:@\@h@f@r@e@f@\@c@h@o@y@v@p@\@v@a@.@u@g@z@y@
		$a_01_2 = {40 3a 40 5c 40 6a 40 76 40 61 40 71 40 62 40 6a 40 66 40 5c 40 66 40 6c 40 66 40 67 40 72 40 7a 40 33 40 32 40 5c 40 7a 40 66 40 75 40 67 40 6e 40 2e 40 72 40 6b 40 72 40 } //01 00  @:@\@j@v@a@q@b@j@f@\@f@l@f@g@r@z@3@2@\@z@f@u@g@n@.@r@k@r@
		$a_01_3 = {40 3a 40 5c 40 68 40 66 40 72 40 65 40 66 40 5c 40 63 40 68 40 6f 40 79 40 76 40 70 40 5c 40 76 40 61 40 2e 40 70 40 62 40 7a 40 } //00 00  @:@\@h@f@r@e@f@\@c@h@o@y@v@p@\@v@a@.@p@b@z@
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_JO_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {28 22 74 65 6d 70 22 29 } //01 00  ("temp")
		$a_01_1 = {3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c } //01 00  = New WshShell
		$a_03_2 = {26 20 43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 90 02 10 2c 90 00 } //01 00 
		$a_03_3 = {4f 70 65 6e 20 90 02 10 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 90 00 } //01 00 
		$a_01_4 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 42 6f 6f 6b 6d 61 72 6b 73 } //01 00  ActiveDocument.Bookmarks
		$a_01_5 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 41 63 63 65 70 74 41 6c 6c 52 65 76 69 73 69 6f 6e 73 53 68 6f 77 6e } //01 00  ActiveDocument.AcceptAllRevisionsShown
		$a_01_6 = {2e 53 68 6f 77 48 69 64 64 65 6e 20 3d 20 46 61 6c 73 65 } //00 00  .ShowHidden = False
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_JO_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {56 42 41 2e 4d 69 64 28 90 02 0a 2c 20 90 02 0a 2c 20 31 29 90 00 } //01 00 
		$a_03_1 = {56 42 41 2e 43 68 72 28 90 02 0a 29 90 00 } //01 00 
		$a_03_2 = {52 65 70 6c 61 63 65 28 90 02 0a 2c 20 90 02 0a 2c 20 22 22 29 90 00 } //01 00 
		$a_01_3 = {41 73 20 53 74 72 69 6e 67 20 3d 20 22 70 40 3a 40 5c 40 6a 40 76 40 61 40 71 40 62 40 6a 40 66 40 5c 40 66 40 6c 40 66 40 67 40 72 40 7a 40 33 40 32 40 5c 40 7a 40 66 40 75 40 67 40 6e 40 2e 40 72 40 6b 40 72 40 } //01 00  As String = "p@:@\@j@v@a@q@b@j@f@\@f@l@f@g@r@z@3@2@\@z@f@u@g@n@.@r@k@r@
		$a_01_4 = {41 73 20 53 74 72 69 6e 67 20 3d 20 22 50 40 3a 40 5c 40 68 40 66 40 72 40 65 40 66 40 5c 40 63 40 68 40 6f 40 79 40 76 40 70 40 5c 40 76 40 61 40 2e 40 70 40 62 40 7a 40 } //01 00  As String = "P@:@\@h@f@r@e@f@\@c@h@o@y@v@p@\@v@a@.@p@b@z@
		$a_01_5 = {41 73 20 53 74 72 69 6e 67 20 3d 20 22 50 40 3a 40 5c 40 68 40 66 40 72 40 65 40 66 40 5c 40 63 40 68 40 6f 40 79 40 76 40 70 40 5c 40 76 40 61 40 2e 40 75 40 67 40 7a 40 79 40 } //00 00  As String = "P@:@\@h@f@r@e@f@\@c@h@o@y@v@p@\@v@a@.@u@g@z@y@
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_JO_MTB_4{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {47 65 74 4f 62 6a 65 63 74 28 22 6e 65 77 3a 7b 31 33 37 30 22 20 26 20 90 02 08 20 26 20 22 39 36 32 22 20 26 20 90 02 08 20 26 20 22 30 2d 43 32 37 22 20 26 20 90 02 08 20 26 20 22 39 2d 31 31 43 22 20 26 20 90 02 08 20 26 20 22 45 2d 41 34 22 20 26 20 90 02 08 20 26 20 22 39 45 2d 34 34 34 35 22 20 26 20 90 02 08 20 26 20 22 35 33 35 34 22 20 26 20 90 02 08 20 26 20 22 30 30 30 30 90 00 } //01 00 
		$a_03_1 = {4e 6f 2e 4e 61 6d 65 73 70 61 63 65 28 22 43 3a 5c 77 69 6e 64 6f 22 20 26 20 90 02 08 20 26 20 22 77 73 5c 74 65 22 20 26 20 90 02 08 20 26 20 22 6d 70 22 29 90 00 } //01 00 
		$a_03_2 = {43 6f 70 79 48 65 72 65 20 28 22 5c 5c 74 68 65 61 74 74 61 22 20 26 20 90 02 08 20 26 20 22 63 6b 65 72 2e 63 6f 6d 40 53 22 20 26 20 90 02 08 20 26 20 22 53 4c 5c 77 65 62 64 22 20 26 20 90 02 08 20 26 20 22 61 76 5f 73 5c 90 02 0a 2e 65 78 22 20 26 20 90 02 08 20 26 20 22 65 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}