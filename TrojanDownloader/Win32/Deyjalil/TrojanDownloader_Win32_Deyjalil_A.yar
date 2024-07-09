
rule TrojanDownloader_Win32_Deyjalil_A{
	meta:
		description = "TrojanDownloader:Win32/Deyjalil.A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffa4 01 ffffff9a 01 08 00 00 "
		
	strings :
		$a_03_0 = {43 72 6f 73 73 72 69 64 65 72 41 70 70 30 30 30 30 34 ?? ?? 2e 53 61 6e 64 62 6f 78 } //100
		$a_03_1 = {41 70 70 30 30 30 30 34 ?? ?? 2e 46 42 41 70 69 2e 31 } //100
		$a_01_2 = {31 31 31 31 2d 31 31 30 30 31 31 30 34 31 31 33 35 7d 20 3d 20 73 20 27 43 6f 64 65 63 2d 56 27 } //100 1111-110011041135} = s 'Codec-V'
		$a_01_3 = {54 79 70 65 4c 69 62 27 20 3d 20 73 20 27 7b 34 34 34 34 34 34 34 34 2d 34 34 34 34 2d } //50 TypeLib' = s '{44444444-4444-
		$a_01_4 = {2e 42 48 4f 20 3d 20 73 20 27 43 72 6f 73 73 72 69 64 65 72 41 70 70 30 30 30 30 34 } //50 .BHO = s 'CrossriderApp00004
		$a_01_5 = {32 32 32 32 2d 32 32 32 32 2d 32 32 30 30 32 32 30 34 32 32 33 35 7d 27 } //10 2222-2222-220022042235}'
		$a_01_6 = {43 4c 53 49 44 20 3d 20 73 20 27 7b 31 31 31 31 31 31 31 31 2d 31 31 31 31 2d 31 31 31 31 2d } //10 CLSID = s '{11111111-1111-1111-
		$a_01_7 = {46 6f 72 63 65 52 65 6d 6f 76 65 20 7b 31 31 31 31 31 31 31 31 2d 31 31 31 31 2d 31 31 31 31 2d } //10 ForceRemove {11111111-1111-1111-
	condition:
		((#a_03_0  & 1)*100+(#a_03_1  & 1)*100+(#a_01_2  & 1)*100+(#a_01_3  & 1)*50+(#a_01_4  & 1)*50+(#a_01_5  & 1)*10+(#a_01_6  & 1)*10+(#a_01_7  & 1)*10) >=410
 
}
rule TrojanDownloader_Win32_Deyjalil_A_2{
	meta:
		description = "TrojanDownloader:Win32/Deyjalil.A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffa4 01 ffffff9a 01 10 00 00 "
		
	strings :
		$a_03_0 = {43 72 6f 73 73 72 69 64 65 72 41 70 70 30 30 30 34 ?? ?? ?? 2e 53 61 6e 64 62 6f 78 } //100
		$a_03_1 = {41 70 70 30 30 30 34 ?? ?? ?? 2e 46 42 41 70 69 2e 31 } //100
		$a_03_2 = {31 31 31 31 2d 31 31 30 30 31 31 34 ?? ?? ?? ?? ?? 7d 20 3d 20 73 20 27 66 61 63 65 62 6f 6f 6b 20 6c 69 6c 79 20 73 79 73 74 65 6d 27 } //100
		$a_03_3 = {31 31 31 31 2d 31 31 30 30 31 31 34 ?? ?? ?? ?? ?? 7d 20 3d 20 73 20 27 54 69 6d 65 6c 69 6e 65 20 52 65 6d 6f 76 65 72 27 } //100
		$a_03_4 = {31 31 31 31 2d 31 31 30 30 31 31 34 ?? ?? ?? ?? ?? 7d 20 3d 20 73 20 27 57 69 6e 64 6f 77 73 20 55 70 64 61 74 65 20 41 64 64 2d 4f 6e 27 } //100
		$a_03_5 = {31 31 31 31 2d 31 31 30 30 31 31 34 ?? ?? ?? ?? ?? 7d 20 3d 20 73 20 27 41 71 6f 72 69 2e 63 6f 6d 27 } //100
		$a_03_6 = {31 31 31 31 2d 31 31 30 30 31 31 34 ?? ?? ?? ?? ?? 7d 20 3d 20 73 20 27 48 44 20 4d 65 64 69 61 20 43 6f 64 65 63 27 } //100
		$a_01_7 = {31 31 31 31 2d 31 31 30 30 31 31 34 39 31 31 37 32 7d 20 3d 20 73 20 27 56 69 64 65 6f 46 69 6c 65 44 6f 77 6e 6c 6f 61 64 27 } //100 1111-110011491172} = s 'VideoFileDownload'
		$a_03_8 = {31 31 31 31 2d 31 31 30 30 31 31 34 ?? ?? ?? ?? ?? 7d 20 3d 20 73 20 27 41 64 2d 4b 69 6c 6c 65 72 20 50 72 6f 27 } //100
		$a_03_9 = {31 31 31 31 2d 31 31 30 30 31 31 34 ?? ?? ?? ?? ?? 7d 20 3d 20 73 20 27 41 71 6f 72 69 20 62 72 6f 77 73 65 72 20 65 78 74 65 6e 73 69 6f 6e 27 } //100
		$a_03_10 = {31 31 31 31 2d 31 31 30 30 31 31 34 ?? ?? ?? ?? ?? 7d 20 3d 20 73 20 27 46 42 4c 49 58 2d 53 4f 43 49 41 4c 27 } //100
		$a_01_11 = {54 79 70 65 4c 69 62 27 20 3d 20 73 20 27 7b 34 34 34 34 34 34 34 34 2d 34 34 34 34 2d } //50 TypeLib' = s '{44444444-4444-
		$a_01_12 = {2e 42 48 4f 20 3d 20 73 20 27 43 72 6f 73 73 72 69 64 65 72 41 70 70 30 30 30 34 } //50 .BHO = s 'CrossriderApp0004
		$a_01_13 = {32 32 32 32 2d 32 32 32 32 2d 32 32 30 30 32 32 34 } //10 2222-2222-2200224
		$a_01_14 = {43 4c 53 49 44 20 3d 20 73 20 27 7b 31 31 31 31 31 31 31 31 2d 31 31 31 31 2d 31 31 31 31 2d } //10 CLSID = s '{11111111-1111-1111-
		$a_01_15 = {46 6f 72 63 65 52 65 6d 6f 76 65 20 7b 31 31 31 31 31 31 31 31 2d 31 31 31 31 2d 31 31 31 31 2d } //10 ForceRemove {11111111-1111-1111-
	condition:
		((#a_03_0  & 1)*100+(#a_03_1  & 1)*100+(#a_03_2  & 1)*100+(#a_03_3  & 1)*100+(#a_03_4  & 1)*100+(#a_03_5  & 1)*100+(#a_03_6  & 1)*100+(#a_01_7  & 1)*100+(#a_03_8  & 1)*100+(#a_03_9  & 1)*100+(#a_03_10  & 1)*100+(#a_01_11  & 1)*50+(#a_01_12  & 1)*50+(#a_01_13  & 1)*10+(#a_01_14  & 1)*10+(#a_01_15  & 1)*10) >=410
 
}