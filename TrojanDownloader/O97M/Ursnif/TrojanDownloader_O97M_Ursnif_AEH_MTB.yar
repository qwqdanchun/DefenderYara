
rule TrojanDownloader_O97M_Ursnif_AEH_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.AEH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 53 75 62 20 43 6f 6d 6d 61 6e 64 42 75 74 74 6f 6e 31 5f 43 6c 69 63 6b 28 29 } //1 Public Sub CommandButton1_Click()
		$a_01_1 = {2e 65 78 65 63 20 66 72 6d 2e 43 6f 6d 6d 61 6e 64 42 75 74 74 6f 6e 31 2e 54 61 67 20 26 20 22 20 63 3a 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 6d 61 69 6e 2e 68 74 61 22 } //1 .exec frm.CommandButton1.Tag & " c:\users\public\main.hta"
		$a_01_2 = {72 65 6d 6f 76 65 4c 6f 63 61 6c 2e 6d 61 69 6e 43 6c 61 73 73 } //1 removeLocal.mainClass
		$a_03_3 = {43 61 6c 6c 20 66 72 6d 2e 43 6f 6d 6d 61 6e 64 42 75 74 74 6f 6e 31 5f 43 6c 69 63 6b 90 0c 02 00 45 6e 64 20 53 75 62 } //1
		$a_01_4 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 79 73 74 65 6d 2e 54 65 78 74 2e 53 74 72 69 6e 67 42 75 69 6c 64 65 72 22 29 } //1 = CreateObject("System.Text.StringBuilder")
		$a_01_5 = {73 70 6c 69 74 28 27 27 29 2e 72 65 76 65 72 73 65 28 29 2e 6a 6f 69 6e 28 27 27 29 3b } //1 split('').reverse().join('');
		$a_01_6 = {54 69 6d 65 6f 75 74 20 3d 20 36 30 30 30 30 } //1 Timeout = 60000
		$a_03_7 = {73 63 72 69 70 74 20 3d 20 22 73 63 72 69 70 74 22 20 26 20 22 2e 22 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //1
		$a_01_8 = {2e 41 70 70 65 6e 64 5f 33 20 22 3c 64 69 76 20 69 64 3d 27 63 6f 6e 74 65 6e 74 27 3e 66 54 74 6c } //1 .Append_3 "<div id='content'>fTtl
		$a_01_9 = {66 6f 72 28 78 3d 30 3b 78 3c 4c 3b 78 2b 2b } //1 for(x=0;x<L;x++
		$a_01_10 = {39 38 37 36 35 34 33 32 31 30 7a 79 78 77 76 75 74 73 72 71 70 6f 6e 6d 6c 6b 6a 69 68 67 66 65 64 63 62 61 5a 59 58 57 56 55 54 53 52 51 50 4f 4e 4d 4c 4b 4a 49 48 47 46 45 44 43 42 41 } //1 9876543210zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA
		$a_01_11 = {76 61 72 54 65 78 74 50 72 6f 63 65 64 75 72 65 } //1 varTextProcedure
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_03_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=12
 
}