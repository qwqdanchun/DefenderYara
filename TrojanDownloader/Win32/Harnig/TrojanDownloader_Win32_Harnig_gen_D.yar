
rule TrojanDownloader_Win32_Harnig_gen_D{
	meta:
		description = "TrojanDownloader:Win32/Harnig.gen!D,SIGNATURE_TYPE_PEHSTR_EXT,1d 00 13 00 1c 00 00 "
		
	strings :
		$a_00_0 = {61 64 76 36 } //1 adv6
		$a_00_1 = {61 64 76 37 } //1 adv7
		$a_00_2 = {5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //1 \drivers\etc\hosts
		$a_01_3 = {64 6c 75 6e 69 71 } //1 dluniq
		$a_01_4 = {70 61 79 64 69 61 6c 2e 74 78 74 } //1 paydial.txt
		$a_01_5 = {5c 70 61 79 64 69 61 6c 2e 65 78 65 } //1 \paydial.exe
		$a_01_6 = {70 61 79 74 69 6d 65 2e 74 78 74 } //1 paytime.txt
		$a_00_7 = {5c 70 61 79 74 69 6d 65 2e 65 78 65 } //1 \paytime.exe
		$a_01_8 = {5c 63 6f 75 6e 74 72 79 64 69 61 6c 2e 65 78 65 } //1 \countrydial.exe
		$a_00_9 = {74 69 62 73 2e 70 68 70 } //1 tibs.php
		$a_01_10 = {5c 74 69 62 73 2e 65 78 65 } //1 \tibs.exe
		$a_01_11 = {5c 64 69 6d 61 6b } //1 \dimak
		$a_01_12 = {5c 75 6e 69 71 5c 6b 6c 2e 65 78 65 5c } //1 \uniq\kl.exe\
		$a_02_13 = {61 64 76 3d 61 64 76 ?? ?? ?? 26 63 6f 64 65 31 3d 48 4e 4e 45 26 63 6f 64 65 32 3d 35 31 32 31 } //5
		$a_01_14 = {68 74 74 70 3a 2f 2f 31 39 35 2e 39 35 2e 32 31 38 2e 31 37 33 2f 64 6c 2f 64 6c 2e 70 68 70 3f } //5 http://195.95.218.173/dl/dl.php?
		$a_01_15 = {68 74 74 70 3a 2f 2f 31 39 35 2e 39 35 2e 32 31 38 2e 31 37 33 2f 74 72 6f 79 73 2f } //5 http://195.95.218.173/troys/
		$a_01_16 = {6e 65 77 64 69 61 6c 31 2e 74 78 74 20 20 } //1 newdial1.txt  
		$a_01_17 = {5c 6e 65 77 64 69 61 6c 31 2e 65 78 65 20 20 } //1 \newdial1.exe  
		$a_01_18 = {6e 65 77 64 69 61 6c 2e 74 78 74 20 } //1 newdial.txt 
		$a_01_19 = {64 6c 2f 64 6c 75 6e 69 71 2e 70 68 70 3f } //2 dl/dluniq.php?
		$a_01_20 = {5c 73 65 63 75 72 65 33 32 2e 68 74 6d 6c } //1 \secure32.html
		$a_01_21 = {74 6f 6f 6c 62 61 72 2e 74 78 74 } //1 toolbar.txt
		$a_00_22 = {5c 74 6f 6f 6c 62 61 72 2e 65 78 65 } //1 \toolbar.exe
		$a_01_23 = {64 65 67 62 65 73 2e 74 78 74 } //1 degbes.txt
		$a_01_24 = {5c 64 65 67 62 65 73 2e 65 78 65 } //1 \degbes.exe
		$a_01_25 = {6b 6c 2e 74 78 74 } //1 kl.txt
		$a_01_26 = {5c 6b 6c 2e 65 78 65 } //1 \kl.exe
		$a_02_27 = {53 55 ff 15 ?? ?? ?? 00 bf ?? ?? ?? 00 83 c9 ff 33 c0 f2 ae f7 d1 2b f9 50 8b f7 8b d1 8b fd 83 c9 ff f2 ae 8b ca 4f c1 e9 02 f3 a5 8b ca 55 83 e1 03 f3 a4 } //25
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_00_7  & 1)*1+(#a_01_8  & 1)*1+(#a_00_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_02_13  & 1)*5+(#a_01_14  & 1)*5+(#a_01_15  & 1)*5+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*2+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_00_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1+(#a_02_27  & 1)*25) >=19
 
}