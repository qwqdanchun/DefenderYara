
rule TrojanDownloader_O97M_Powdow_PSTT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.PSTT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {41 36 25 45 32 25 34 36 25 35 37 25 36 36 25 46 32 25 31 33 25 31 33 25 31 33 25 45 32 25 38 33 25 35 33 25 31 33 25 45 32 25 37 33 25 32 33 25 32 33 25 45 32 25 32 33 25 39 33 25 31 33 25 46 32 25 46 32 25 41 33 25 30 37 25 34 37 25 34 37 25 38 36 25 37 32 25 37 32 25 38 32 25 } //1 A6%E2%46%57%66%F2%13%13%13%E2%83%53%13%E2%73%23%23%E2%23%93%13%F2%F2%A3%07%47%47%86%72%72%82%
		$a_01_1 = {25 42 32 25 37 32 25 34 36 25 37 32 25 42 32 25 37 32 25 31 36 25 46 36 25 37 32 25 42 32 25 37 32 25 43 36 25 45 36 25 37 32 25 42 32 25 37 32 25 37 37 25 46 36 25 37 32 25 42 32 25 37 32 25 34 34 25 45 32 25 37 32 25 42 32 25 37 32 25 39 32 25 34 37 25 45 36 25 35 36 25 37 32 25 42 32 25 37 32 25 39 36 25 43 36 25 37 32 25 42 32 25 } //1 %B2%72%46%72%B2%72%16%F6%72%B2%72%C6%E6%72%B2%72%77%F6%72%B2%72%44%E2%72%B2%72%92%47%E6%56%72%B2%72%96%C6%72%B2%
		$a_01_2 = {3d 73 72 61 68 43 69 69 63 73 61 24 20 6e 65 64 64 69 68 20 65 6c 79 74 53 77 6f 64 6e 69 57 2d } //1 =srahCiicsa$ neddih elytSwodniW-
		$a_01_3 = {6c 6c 65 68 73 72 65 77 6f } //1 llehsrewo
		$a_01_4 = {53 68 65 6c 6c 2e 41 70 70 6c 69 63 61 74 69 6f 6e } //1 Shell.Application
		$a_01_5 = {58 60 45 60 49 7c 27 27 20 6e 69 6f 6a 2d 20 6d 6a 24 3b 7d 29 29 36 31 2c 5f 24 28 36 31 74 6e 69 6f 74 3a 3a 5d 74 72 65 76 6e 6f 63 5b 28 5d 72 61 68 63 5b 7b 20 68 63 61 45 72 6f 66 20 7c 20 29 27 25 27 28 74 69 6c 70 53 2e 73 72 61 68 43 69 69 63 73 61 24 3d 6d 6a 24 3b } //1 X`E`I|'' nioj- mj$;}))61,_$(61tniot::]trevnoc[(]rahc[{ hcaErof | )'%'(tilpS.srahCiicsa$=mj$;
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}