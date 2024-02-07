
rule Ransom_Win32_Betisrypt_A_{
	meta:
		description = "Ransom:Win32/Betisrypt.A!!Betisrypt.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,07 00 07 00 0b 00 00 01 00 "
		
	strings :
		$a_80_0 = {21 23 5f 44 45 43 52 59 50 54 5f 23 21 2e 69 6e 66 } //!#_DECRYPT_#!.inf  01 00 
		$a_80_1 = {21 23 5f 52 45 41 44 5f 4d 45 5f 23 21 2e 68 74 61 } //!#_READ_ME_#!.hta  01 00 
		$a_80_2 = {2e 6f 6e 79 6f 6e } //.onyon  01 00 
		$a_80_3 = {6e 69 6e 74 65 6e 64 6f 6e 78 40 71 71 2e 63 6f 6d } //nintendonx@qq.com  01 00 
		$a_80_4 = {25 73 2d 25 73 2d 25 64 2d 25 30 32 64 2d 25 30 32 64 } //%s-%s-%d-%02d-%02d  01 00 
		$a_80_5 = {2f 63 20 76 73 73 61 64 6d 69 6e 2e 65 78 65 20 44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 41 6c 6c 20 2f 51 75 69 65 74 } ///c vssadmin.exe Delete Shadows /All /Quiet  01 00 
		$a_80_6 = {2f 63 20 62 63 64 65 64 69 74 2e 65 78 65 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 72 65 63 6f 76 65 72 79 65 6e 61 62 6c 65 64 20 4e 6f } ///c bcdedit.exe /set {default} recoveryenabled No  01 00 
		$a_80_7 = {2f 63 20 62 63 64 65 64 69 74 2e 65 78 65 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 62 6f 6f 74 73 74 61 74 75 73 70 6f 6c 69 63 79 20 69 67 6e 6f 72 65 61 6c 6c 66 61 69 6c 75 72 65 73 } ///c bcdedit.exe /set {default} bootstatuspolicy ignoreallfailures  01 00 
		$a_80_8 = {00 2e 64 62 5f 6a 6f 75 72 6e 61 00 } //  01 00 
		$a_80_9 = {00 2e 70 6c 75 73 5f 6d 75 68 64 00 } //  02 00 
		$a_01_10 = {83 fe 02 7d 05 83 f8 02 74 17 83 f8 03 74 0a 83 f8 02 74 05 83 f8 04 75 08 8d 46 41 } //05 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Betisrypt_A__2{
	meta:
		description = "Ransom:Win32/Betisrypt.A!!Betisrypt.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,46 00 46 00 07 00 00 0a 00 "
		
	strings :
		$a_00_0 = {5c 00 48 00 45 00 4c 00 50 00 2e 00 68 00 74 00 61 00 } //0a 00  \HELP.hta
		$a_00_1 = {44 00 45 00 43 00 52 00 59 00 50 00 54 00 49 00 4e 00 46 00 4f 00 } //0a 00  DECRYPTINFO
		$a_00_2 = {4e 00 55 00 43 00 4c 00 45 00 41 00 52 00 } //0a 00  NUCLEAR
		$a_00_3 = {2f 00 63 00 20 00 76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 44 00 65 00 6c 00 65 00 74 00 65 00 20 00 53 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 41 00 6c 00 6c 00 20 00 2f 00 51 00 75 00 69 00 65 00 74 00 } //0a 00  /c vssadmin.exe Delete Shadows /All /Quiet
		$a_00_4 = {2f 00 63 00 20 00 62 00 63 00 64 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 20 00 2f 00 73 00 65 00 74 00 20 00 7b 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 7d 00 20 00 72 00 65 00 63 00 6f 00 76 00 65 00 72 00 79 00 65 00 6e 00 61 00 62 00 6c 00 65 00 64 00 20 00 4e 00 6f 00 } //0a 00  /c bcdedit.exe /set {default} recoveryenabled No
		$a_00_5 = {2f 00 63 00 20 00 62 00 63 00 64 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 20 00 2f 00 73 00 65 00 74 00 20 00 7b 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 7d 00 20 00 62 00 6f 00 6f 00 74 00 73 00 74 00 61 00 74 00 75 00 73 00 70 00 6f 00 6c 00 69 00 63 00 79 00 20 00 69 00 67 00 6e 00 6f 00 72 00 65 00 61 00 6c 00 6c 00 66 00 61 00 69 00 6c 00 75 00 72 00 65 00 73 00 } //0a 00  /c bcdedit.exe /set {default} bootstatuspolicy ignoreallfailures
		$a_00_6 = {6e 6f 63 74 75 72 6e 61 6c 6e 6f 63 74 75 72 6e 61 6c 6e 6f 63 74 75 72 6e 61 6c 6e 6f 63 74 75 72 6e 61 6c } //05 00  nocturnalnocturnalnocturnalnocturnal
	condition:
		any of ($a_*)
 
}