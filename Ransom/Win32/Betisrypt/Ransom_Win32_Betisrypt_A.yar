
rule Ransom_Win32_Betisrypt_A{
	meta:
		description = "Ransom:Win32/Betisrypt.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 15 00 00 02 00 "
		
	strings :
		$a_80_0 = {5c 42 54 43 57 61 72 65 5c 62 74 63 77 5c } //\BTCWare\btcw\  02 00 
		$a_80_1 = {44 73 72 49 57 68 51 34 50 6d 62 59 62 6b 78 71 4c 31 66 34 4b 64 69 2f 53 58 53 5a 70 6c 5a 2b 5a 4a 30 4a 7a 52 41 57 2f 30 50 50 65 2b 69 2b 6f 62 4b 51 6a 50 72 32 35 69 54 71 51 44 66 50 37 } //DsrIWhQ4PmbYbkxqL1f4Kdi/SXSZplZ+ZJ0JzRAW/0PPe+i+obKQjPr25iTqQDfP7  01 00 
		$a_80_2 = {64 65 63 72 79 70 74 20 79 6f 75 72 20 6e 65 65 64 20 62 75 79 20 74 68 65 20 42 54 43 57 2d 44 65 63 72 79 70 74 65 72 } //decrypt your need buy the BTCW-Decrypter  01 00 
		$a_80_3 = {6e 6f 2e 62 74 63 77 40 70 72 6f 74 6f 6e 6d 61 69 6c 2e 63 68 } //no.btcw@protonmail.ch  01 00 
		$a_80_4 = {4c 45 54 54 45 52 20 41 54 54 41 43 48 20 59 4f 55 52 20 46 49 4c 45 20 6b 65 79 2e 64 61 74 21 } //LETTER ATTACH YOUR FILE key.dat!  01 00 
		$a_80_5 = {42 54 43 57 61 72 65 2d 6c 6f 63 6b 65 72 2e } //BTCWare-locker.  01 00 
		$a_80_6 = {00 2e 64 62 5f 6a 6f 75 72 6e 61 00 } //  01 00 
		$a_80_7 = {00 2e 70 6c 75 73 5f 6d 75 68 64 00 } //  01 00 
		$a_80_8 = {00 69 6e 73 62 74 71 00 } //  01 00 
		$a_80_9 = {00 42 54 43 57 58 58 58 00 } //  01 00 
		$a_80_10 = {25 73 2d 25 73 2d 25 64 2d 25 30 32 64 2d 25 30 32 64 } //%s-%s-%d-%02d-%02d  01 00 
		$a_80_11 = {25 73 5c 6b 65 79 2e 64 61 74 } //%s\key.dat  01 00 
		$a_80_12 = {25 73 5c 6d 66 73 6b 53 6b 66 6b 6c 73 2e 65 78 65 } //%s\mfskSkfkls.exe  01 00 
		$a_80_13 = {25 73 5c 23 5f 48 4f 57 5f 54 4f 5f 46 49 58 2e 69 6e 66 } //%s\#_HOW_TO_FIX.inf  01 00 
		$a_80_14 = {25 73 2e 5b 25 73 5d 2e 62 74 63 77 61 72 65 } //%s.[%s].btcware  01 00 
		$a_80_15 = {2f 63 20 76 73 73 61 64 6d 69 6e 2e 65 78 65 20 44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 41 6c 6c 20 2f 51 75 69 65 74 } ///c vssadmin.exe Delete Shadows /All /Quiet  01 00 
		$a_80_16 = {2f 63 20 62 63 64 65 64 69 74 2e 65 78 65 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 72 65 63 6f 76 65 72 79 65 6e 61 62 6c 65 64 20 4e 6f } ///c bcdedit.exe /set {default} recoveryenabled No  01 00 
		$a_80_17 = {2f 63 20 62 63 64 65 64 69 74 2e 65 78 65 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 62 6f 6f 74 73 74 61 74 75 73 70 6f 6c 69 63 79 20 69 67 6e 6f 72 65 61 6c 6c 66 61 69 6c 75 72 65 73 } ///c bcdedit.exe /set {default} bootstatuspolicy ignoreallfailures  02 00 
		$a_01_18 = {74 4e 81 7d f0 e8 03 00 00 b8 01 00 00 00 68 f0 03 00 00 } //02 00 
		$a_01_19 = {83 fe 02 7d 05 83 f8 02 74 17 83 f8 03 74 0a 83 f8 02 74 05 83 f8 04 75 08 8d 46 41 } //02 00 
		$a_01_20 = {b8 42 4d 00 00 66 89 45 dc 0f 11 45 c8 } //00 00 
		$a_00_21 = {7e 15 00 00 9c ac } //b5 6d 
	condition:
		any of ($a_*)
 
}