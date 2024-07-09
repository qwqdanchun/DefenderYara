
rule TrojanDownloader_Linux_Powload_HZC_MTB{
	meta:
		description = "TrojanDownloader:Linux/Powload.HZC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {2e 52 75 6e 28 22 50 6f 77 65 72 [0-08] 73 68 65 6c 6c 20 2d 65 78 [0-08] 65 63 20 42 79 70 [0-08] 61 73 73 20 2d } //1
		$a_01_1 = {5b 42 79 74 65 5b 5d 5d 24 73 68 61 3d 20 69 65 78 28 69 65 78 28 27 28 26 28 47 43 4d 20 2a 57 2d 4f 2a 29 27 2b 20 27 4e 65 74 2e 27 2b 27 57 65 62 43 27 2b 27 6c 69 65 6e 74 29 27 2b 27 2e 44 6f 77 27 2b 27 6e 6c 6f 61 64 27 2b 27 53 74 72 27 2b 27 69 6e 67 } //1 [Byte[]]$sha= iex(iex('(&(GCM *W-O*)'+ 'Net.'+'WebC'+'lient)'+'.Dow'+'nload'+'Str'+'ing
		$a_01_2 = {28 27 27 27 2b 27 68 27 2b 27 74 27 2b 27 74 27 2b 27 70 27 2b 27 3a 27 2b 27 2f 27 2b 27 2f 27 2b 27 77 27 2b 27 77 27 2b 27 77 27 2b 27 2e 27 2b 27 6d 27 2b 27 39 27 2b 27 63 27 2b 27 2e 27 2b 27 6e 27 2b 27 65 27 2b 27 74 27 2b 27 2f 27 2b 27 75 27 2b 27 70 27 2b 27 6c 27 2b 27 6f 27 2b 27 61 27 2b 27 64 27 2b 27 73 27 2b 27 2f 27 2b 27 31 27 2b 27 35 27 2b 27 38 27 2b 27 37 27 2b 27 32 27 2b 27 35 27 2b 27 36 27 2b 27 30 27 2b 27 39 27 2b 27 37 27 2b 27 32 27 2b 27 2e 27 2b 27 6a 27 2b 27 70 27 2b 27 67 27 2b 27 27 27 29 } //1 ('''+'h'+'t'+'t'+'p'+':'+'/'+'/'+'w'+'w'+'w'+'.'+'m'+'9'+'c'+'.'+'n'+'e'+'t'+'/'+'u'+'p'+'l'+'o'+'a'+'d'+'s'+'/'+'1'+'5'+'8'+'7'+'2'+'5'+'6'+'0'+'9'+'7'+'2'+'.'+'j'+'p'+'g'+''')
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}