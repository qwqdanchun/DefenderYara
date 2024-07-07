
rule TrojanDownloader_Win32_Cerber_A_bit{
	meta:
		description = "TrojanDownloader:Win32/Cerber.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 "
		
	strings :
		$a_03_0 = {b3 0d 8a 06 3c 6d 7f 22 0f be c0 50 e8 90 01 02 00 00 59 85 c0 74 14 0f be 06 50 e8 90 01 02 00 00 59 85 c0 74 06 8a 06 02 c3 eb 6e 8a 06 3c 4d 7f 1c 0f be c0 50 e8 90 01 02 00 00 90 00 } //1
		$a_03_1 = {75 67 67 63 3a 2f 2f 32 32 30 2e 31 38 31 2e 38 37 2e 38 30 2f 90 02 10 2e 72 6b 72 90 00 } //2
		$a_03_2 = {53 53 6a 03 53 6a 03 53 68 1c 39 40 00 c7 45 64 90 01 02 40 00 c7 45 68 90 01 02 40 00 c7 45 6c 90 01 02 40 00 89 5d 70 ff 15 90 01 02 40 00 8b f8 83 ff ff 0f 84 90 01 01 00 00 00 90 00 } //1
		$a_03_3 = {8d 45 74 50 56 8d 85 58 ff ff ff 50 6a 0c 8d 45 58 50 68 00 14 2d 00 57 ff 15 90 01 02 40 00 85 c0 74 90 00 } //1
		$a_01_4 = {56 61 67 72 65 61 72 67 45 72 6e 71 53 76 79 72 00 } //1
		$a_01_5 = {78 72 65 61 72 79 33 32 00 } //1
		$a_01_6 = {50 65 72 6e 67 72 43 65 62 70 72 66 66 4e 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*2+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=6
 
}