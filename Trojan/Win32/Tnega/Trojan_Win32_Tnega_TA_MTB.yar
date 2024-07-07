
rule Trojan_Win32_Tnega_TA_MTB{
	meta:
		description = "Trojan:Win32/Tnega.TA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 15 00 00 "
		
	strings :
		$a_01_0 = {67 00 65 00 34 00 61 00 33 00 61 00 33 00 68 00 6d 00 70 00 32 00 6f 00 65 00 69 00 37 00 77 00 6f 00 6e 00 6a 00 64 00 36 00 } //1 ge4a3a3hmp2oei7wonjd6
		$a_01_1 = {68 00 66 00 6c 00 37 00 73 00 63 00 32 00 62 00 79 00 62 00 74 00 72 00 6d 00 33 00 76 00 72 00 62 00 65 00 74 00 74 00 61 00 } //1 hfl7sc2bybtrm3vrbetta
		$a_01_2 = {38 00 6c 00 36 00 62 00 68 00 33 00 6f 00 6b 00 66 00 31 00 31 00 37 00 75 00 73 00 74 00 62 00 79 00 31 00 65 00 77 00 79 00 } //1 8l6bh3okf117ustby1ewy
		$a_01_3 = {38 00 66 00 6c 00 37 00 73 00 63 00 32 00 62 00 79 00 62 00 74 00 72 00 6d 00 33 00 76 00 72 00 62 00 65 00 74 00 74 00 61 00 } //1 8fl7sc2bybtrm3vrbetta
		$a_01_4 = {66 00 6c 00 37 00 73 00 63 00 32 00 62 00 79 00 62 00 74 00 72 00 6d 00 33 00 76 00 72 00 62 00 65 00 74 00 74 00 61 00 } //1 fl7sc2bybtrm3vrbetta
		$a_01_5 = {4f 00 66 00 6c 00 37 00 73 00 63 00 32 00 62 00 79 00 62 00 74 00 72 00 6d 00 33 00 76 00 72 00 62 00 65 00 74 00 74 00 61 00 } //1 Ofl7sc2bybtrm3vrbetta
		$a_01_6 = {69 00 75 00 6e 00 65 00 6b 00 31 00 6a 00 6f 00 68 00 77 00 63 00 7a 00 66 00 71 00 35 00 32 00 77 00 75 00 62 00 34 00 } //1 iunek1johwczfq52wub4
		$a_01_7 = {65 00 34 00 61 00 33 00 61 00 33 00 68 00 6d 00 70 00 32 00 6f 00 65 00 69 00 37 00 77 00 6f 00 6e 00 6a 00 64 00 36 00 } //1 e4a3a3hmp2oei7wonjd6
		$a_01_8 = {63 00 6c 00 36 00 62 00 68 00 33 00 6f 00 6b 00 66 00 31 00 31 00 37 00 75 00 73 00 74 00 62 00 79 00 31 00 65 00 77 00 79 00 } //1 cl6bh3okf117ustby1ewy
		$a_01_9 = {70 00 6e 00 6e 00 78 00 65 00 6b 00 6f 00 75 00 74 00 65 00 6e 00 35 00 6e 00 30 00 32 00 35 00 75 00 70 00 33 00 78 00 } //1 pnnxekouten5n025up3x
		$a_01_10 = {6c 00 36 00 62 00 68 00 33 00 6f 00 6b 00 66 00 31 00 31 00 37 00 75 00 73 00 74 00 62 00 79 00 31 00 65 00 77 00 79 00 } //1 l6bh3okf117ustby1ewy
		$a_01_11 = {57 00 65 00 34 00 61 00 33 00 61 00 33 00 68 00 6d 00 70 00 32 00 6f 00 65 00 69 00 37 00 77 00 6f 00 6e 00 6a 00 64 00 36 00 } //1 We4a3a3hmp2oei7wonjd6
		$a_01_12 = {58 00 66 00 6c 00 37 00 73 00 63 00 32 00 62 00 79 00 62 00 74 00 72 00 6d 00 33 00 76 00 72 00 62 00 65 00 74 00 74 00 61 00 } //1 Xfl7sc2bybtrm3vrbetta
		$a_01_13 = {57 00 49 00 4f 00 53 00 4f 00 53 00 4f 00 53 00 4f 00 57 00 } //1 WIOSOSOSOW
		$a_01_14 = {4d 34 72 6c 6c 4a 51 70 35 56 34 6f 7a 4c 75 31 39 72 52 77 69 31 46 56 44 72 67 } //1 M4rllJQp5V4ozLu19rRwi1FVDrg
		$a_01_15 = {78 48 4a 75 62 4e 75 58 30 44 6e 65 37 53 72 53 78 } //1 xHJubNuX0Dne7SrSx
		$a_01_16 = {33 77 69 44 67 61 55 47 6d 38 36 4b 6a 4a 54 55 6e 78 68 62 76 4a 72 73 51 56 68 } //1 3wiDgaUGm86KjJTUnxhbvJrsQVh
		$a_01_17 = {44 67 46 71 4e 79 5a 44 32 4e 63 6a 53 37 70 36 30 4a 47 4d 63 68 31 38 6d 63 38 67 } //1 DgFqNyZD2NcjS7p60JGMch18mc8g
		$a_01_18 = {4b 63 77 6f 37 56 50 53 37 6a 76 31 59 6f 6a 79 51 6c 78 35 37 } //1 Kcwo7VPS7jv1YojyQlx57
		$a_01_19 = {31 30 5a 47 72 31 70 57 62 68 72 4f 49 56 4c 49 48 45 6c 71 55 70 48 6c 4f 73 71 6e 58 44 38 } //1 10ZGr1pWbhrOIVLIHElqUpHlOsqnXD8
		$a_01_20 = {50 4a 56 6f 49 4d 75 51 30 76 37 39 61 74 58 31 4e 56 69 57 78 71 39 39 6e 65 49 4e 6b 78 73 39 } //1 PJVoIMuQ0v79atX1NViWxq99neINkxs9
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1) >=21
 
}