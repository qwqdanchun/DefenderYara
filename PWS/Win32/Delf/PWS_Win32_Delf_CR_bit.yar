
rule PWS_Win32_Delf_CR_bit{
	meta:
		description = "PWS:Win32/Delf.CR!bit,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 07 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8b 4d f4 8a 54 0a ff e8 90 01 03 ff 8b 45 90 01 01 8b 55 90 01 01 e8 90 01 03 ff 8b d8 4b 85 db 7c 65 8b 45 90 01 01 c1 e0 06 03 d8 89 5d f0 83 c7 06 83 ff 08 7c 48 83 ef 08 8b cf 8b 5d 90 01 01 d3 eb 8b cf b8 01 00 00 00 d3 e0 50 8b 45 90 01 01 5a 8b ca 99 f7 f9 89 55 90 01 01 81 e3 ff 00 00 80 79 08 4b 81 cb 00 ff ff ff 43 90 00 } //0a 00 
		$a_01_1 = {2d 2d 2d 2d 57 65 62 4b 69 74 46 6f 72 6d 42 6f 75 6e 64 61 72 79 41 79 46 4c 65 31 65 46 34 4e 41 48 62 4a 71 30 } //0a 00  ----WebKitFormBoundaryAyFLe1eF4NAHbJq0
		$a_01_2 = {38 37 35 66 58 53 72 64 58 78 58 66 59 51 41 4c 38 7a 34 64 59 30 4e 64 59 70 34 50 36 76 34 47 59 36 6a 72 43 7a 59 48 59 30 4d 64 58 30 48 68 } //01 00  875fXSrdXxXfYQAL8z4dY0NdYp4P6v4GY6jrCzYHY0MdX0Hh
		$a_01_3 = {5c 00 2e 00 70 00 75 00 72 00 70 00 6c 00 65 00 5c 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 2e 00 78 00 6d 00 6c 00 } //01 00  \.purple\accounts.xml
		$a_01_4 = {5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 6d 00 73 00 2e 00 74 00 78 00 74 00 } //01 00  \Programms.txt
		$a_01_5 = {5c 00 66 00 69 00 6c 00 65 00 7a 00 69 00 6c 00 6c 00 61 00 5c 00 72 00 65 00 63 00 65 00 6e 00 74 00 73 00 65 00 72 00 76 00 65 00 72 00 73 00 2e 00 78 00 6d 00 6c 00 } //01 00  \filezilla\recentservers.xml
		$a_01_6 = {5c 00 54 00 68 00 75 00 6e 00 64 00 65 00 72 00 62 00 69 00 72 00 64 00 5c 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 73 00 5c 00 } //00 00  \Thunderbird\Profiles\
		$a_00_7 = {5d 04 00 00 fb 95 03 80 5c 24 00 00 } //fd 95 
	condition:
		any of ($a_*)
 
}