
rule VirTool_WinNT_Protmin_gen_B{
	meta:
		description = "VirTool:WinNT/Protmin.gen!B,SIGNATURE_TYPE_PEHSTR,2c 00 23 00 15 00 00 02 00 "
		
	strings :
		$a_01_0 = {46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 41 00 44 00 50 00 72 00 6f 00 74 00 43 00 44 00 4f 00 } //02 00  FileSystem\ADProtCDO
		$a_01_1 = {5c 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 46 00 69 00 6c 00 74 00 65 00 72 00 73 00 5c 00 53 00 53 00 50 00 72 00 6f 00 74 00 } //02 00  \FileSystem\Filters\SSProt
		$a_01_2 = {46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 46 00 41 00 44 00 43 00 44 00 4f 00 } //02 00  FileSystem\FADCDO
		$a_01_3 = {46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 46 00 69 00 6c 00 74 00 65 00 72 00 73 00 5c 00 41 00 44 00 50 00 72 00 6f 00 74 00 } //02 00  FileSystem\Filters\ADProt
		$a_01_4 = {44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 43 00 32 00 30 00 30 00 36 00 30 00 36 00 32 00 33 00 } //02 00  DosDevices\C20060623
		$a_01_5 = {73 73 70 72 6f 74 2e 73 79 73 } //02 00  ssprot.sys
		$a_01_6 = {53 6f 66 74 77 61 72 65 5c 33 36 30 73 61 66 65 5c 41 6e 74 69 42 61 64 77 61 72 65 } //05 00  Software\360safe\AntiBadware
		$a_01_7 = {64 a1 00 00 00 00 50 64 89 25 00 00 00 00 83 c4 d0 53 56 57 89 65 e8 c6 45 } //0a 00 
		$a_01_8 = {c6 45 cc 96 c6 45 cd bc c6 45 ce 87 c6 45 cf 8a c6 45 d0 b8 c6 45 d1 8c c6 45 d2 f9 c6 45 d3 8b c6 45 d4 ae c6 45 d5 8b c6 45 d6 00 c6 45 d8 00 33 c0 } //0a 00 
		$a_01_9 = {c6 45 d0 e7 c6 45 d1 c8 c6 45 d2 e7 c6 45 d3 c8 c6 45 d4 f9 c6 45 d5 8b c6 45 d6 ae c6 45 d7 8b c6 45 d8 00 c6 45 dc 00 33 c0 } //05 00 
		$a_01_10 = {85 c0 75 02 eb 3c 8b 45 c0 33 d2 b9 02 00 00 00 f7 f1 85 d2 75 16 8b 55 } //05 00 
		$a_01_11 = {b8 bb 00 00 c0 eb 71 e8 e0 fc ff ff e8 7b fe ff ff 68 34 42 01 00 8d 45 f4 50 ff 15 } //04 00 
		$a_01_12 = {6a 01 6a 00 68 01 83 00 00 8d 45 f4 50 6a 00 8b 4d 08 51 ff 15 } //07 00 
		$a_01_13 = {ff 15 10 41 01 00 89 45 c4 83 7d c4 00 83 } //0a 00 
		$a_01_14 = {c7 45 c8 18 00 00 00 c7 45 cc 00 00 00 00 c7 45 d4 40 02 00 00 8b 45 0c 89 45 d0 } //09 00 
		$a_01_15 = {c7 45 d8 18 00 00 00 c7 45 dc 00 00 00 00 c7 45 e4 40 02 00 00 8d 45 d0 } //0a 00 
		$a_01_16 = {8b 45 0c 8b 48 18 8b 50 1c 8b 45 0c 8b 40 28 89 08 89 50 04 8b 4d } //0f 00 
		$a_01_17 = {c7 85 5c fd ff ff 18 00 00 00 c7 85 60 fd ff ff 00 00 00 00 c7 85 68 fd ff ff 40 02 00 00 8d 95 74 fd ff ff 89 95 64 fd ff ff c7 85 6c fd ff ff 00 00 00 00 c7 } //0a 00 
		$a_01_18 = {68 3f 00 0f 00 8d 95 58 fd ff ff 52 ff 15 80 40 01 00 89 45 cc 83 7d cc 00 7c 1a 8b } //0c 00 
		$a_01_19 = {ff 15 70 40 01 00 e8 e2 f9 ff ff a3 bc 55 01 00 6a 00 68 90 14 01 00 e8 ff 17 00 00 6a 00 68 80 16 01 00 8b 45 08 50 } //0a 00 
		$a_01_20 = {8b 55 cc 83 c2 01 89 55 cc 8b 45 dc 8b 4d cc 3b 48 18 73 68 8b 55 cc 8b 45 d8 0f bf 0c 50 89 4d c8 8b 55 e0 2b 55 e8 8b 45 c8 8b 4d d0 39 14 81 72 14 8b 55 e0 03 55 e4 2b 55 e8 } //00 00 
	condition:
		any of ($a_*)
 
}