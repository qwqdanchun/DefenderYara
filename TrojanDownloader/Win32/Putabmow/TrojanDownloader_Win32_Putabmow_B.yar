
rule TrojanDownloader_Win32_Putabmow_B{
	meta:
		description = "TrojanDownloader:Win32/Putabmow.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 57 00 6f 00 6d 00 62 00 61 00 74 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 5c 00 00 00 } //2
		$a_01_1 = {2f 00 53 00 20 00 2f 00 56 00 45 00 52 00 59 00 53 00 49 00 4c 00 45 00 4e 00 54 00 20 00 2f 00 53 00 55 00 50 00 50 00 52 00 45 00 53 00 53 00 4d 00 53 00 47 00 42 00 4f 00 58 00 45 00 53 00 20 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 } //2 /S /VERYSILENT /SUPPRESSMSGBOXES /update
		$a_01_2 = {6c 00 61 00 73 00 74 00 5f 00 63 00 68 00 65 00 63 00 6b 00 00 00 } //1
		$a_01_3 = {2f 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 2f 00 75 00 72 00 6c 00 00 00 } //1
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 5c 00 00 00 } //2
		$a_01_5 = {2f 00 53 00 20 00 2f 00 53 00 54 00 4f 00 50 00 4c 00 4f 00 4f 00 4b 00 49 00 4e 00 47 00 20 00 41 00 54 00 20 00 4d 00 59 00 20 00 43 00 4f 00 44 00 45 00 20 00 53 00 45 00 52 00 49 00 4f 00 55 00 53 00 4c 00 59 00 21 00 21 00 21 00 21 00 } //2 /S /STOPLOOKING AT MY CODE SERIOUSLY!!!!
		$a_01_6 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 49 00 6e 00 6e 00 6f 00 63 00 65 00 6e 00 74 00 4b 00 65 00 79 00 5c 00 00 00 } //2
		$a_01_7 = {2f 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 2f 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*1) >=3
 
}