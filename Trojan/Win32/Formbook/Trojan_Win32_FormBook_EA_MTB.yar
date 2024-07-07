
rule Trojan_Win32_FormBook_EA_MTB{
	meta:
		description = "Trojan:Win32/FormBook.EA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {48 00 6b 00 48 00 4b 00 6c 00 4e 00 74 00 69 00 71 00 49 00 75 00 61 00 69 00 51 00 35 00 46 00 39 00 71 00 34 00 48 00 6c 00 67 00 45 00 56 00 56 00 55 00 47 00 39 00 7a 00 67 00 33 00 59 00 78 00 31 00 39 00 30 00 } //1 HkHKlNtiqIuaiQ5F9q4HlgEVVUG9zg3Yx190
		$a_01_1 = {63 00 70 00 38 00 6c 00 6d 00 6b 00 79 00 54 00 71 00 37 00 70 00 4f 00 74 00 55 00 75 00 79 00 79 00 51 00 6b 00 68 00 55 00 79 00 39 00 62 00 6e 00 4d 00 50 00 70 00 62 00 63 00 69 00 59 00 31 00 34 00 } //1 cp8lmkyTq7pOtUuyyQkhUy9bnMPpbciY14
		$a_01_2 = {56 00 6d 00 6b 00 35 00 7a 00 51 00 34 00 42 00 59 00 5a 00 4c 00 6d 00 7a 00 52 00 6d 00 62 00 6e 00 4b 00 31 00 78 00 46 00 39 00 6a 00 71 00 31 00 32 00 36 00 } //1 Vmk5zQ4BYZLmzRmbnK1xF9jq126
		$a_01_3 = {70 00 51 00 33 00 31 00 4b 00 71 00 49 00 34 00 4c 00 34 00 57 00 61 00 73 00 6a 00 72 00 64 00 51 00 48 00 54 00 67 00 48 00 74 00 52 00 49 00 79 00 7a 00 54 00 59 00 5a 00 4c 00 56 00 68 00 63 00 61 00 57 00 49 00 43 00 31 00 38 00 30 00 } //1 pQ31KqI4L4WasjrdQHTgHtRIyzTYZLVhcaWIC180
		$a_01_4 = {6b 00 66 00 63 00 56 00 56 00 44 00 4d 00 63 00 6d 00 4d 00 61 00 48 00 5a 00 49 00 39 00 4b 00 39 00 74 00 6c 00 59 00 6a 00 4a 00 7a 00 74 00 73 00 42 00 6c 00 6a 00 4a 00 47 00 35 00 36 00 } //1 kfcVVDMcmMaHZI9K9tlYjJztsBljJG56
		$a_01_5 = {46 00 6b 00 6c 00 30 00 52 00 5a 00 5a 00 72 00 44 00 41 00 41 00 46 00 39 00 4f 00 58 00 4f 00 66 00 38 00 6f 00 76 00 6f 00 65 00 4b 00 4d 00 4f 00 74 00 45 00 68 00 53 00 51 00 34 00 49 00 31 00 37 00 31 00 } //1 Fkl0RZZrDAAF9OXOf8ovoeKMOtEhSQ4I171
		$a_01_6 = {5a 00 55 00 30 00 4d 00 66 00 42 00 4c 00 67 00 4b 00 79 00 4c 00 57 00 59 00 70 00 56 00 7a 00 56 00 32 00 31 00 38 00 } //1 ZU0MfBLgKyLWYpVzV218
		$a_00_7 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //1 MSVBVM60.DLL
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_00_7  & 1)*1) >=8
 
}