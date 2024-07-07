
rule TrojanDropper_Win32_PowerPunch_A_dha{
	meta:
		description = "TrojanDropper:Win32/PowerPunch.A!dha,SIGNATURE_TYPE_CMDHSTR_EXT,ffffffd2 00 ffffffd2 00 0f 00 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //100 powershell.exe
		$a_00_1 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 45 00 78 00 70 00 72 00 65 00 73 00 73 00 69 00 6f 00 6e 00 20 00 2d 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 28 00 5b 00 54 00 65 00 78 00 74 00 2e 00 45 00 6e 00 63 00 6f 00 64 00 69 00 6e 00 67 00 5d 00 3a 00 3a 00 55 00 74 00 66 00 38 00 2e 00 47 00 65 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 5b 00 43 00 6f 00 6e 00 76 00 65 00 72 00 74 00 5d 00 3a 00 3a 00 } //100 Invoke-Expression -Command ([Text.Encoding]::Utf8.GetString([Convert]::
		$a_00_2 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 47 00 39 00 74 00 62 00 6d 00 78 00 76 00 62 00 79 00 41 00 39 00 49 00 43 00 64 00 31 00 63 00 32 00 6c 00 75 00 5a 00 79 00 42 00 54 00 65 00 58 00 4e 00 30 00 5a 00 57 00 } //10 FromBase64String('JG9tbmxvbyA9ICd1c2luZyBTeXN0ZW
		$a_00_3 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 47 00 64 00 73 00 63 00 47 00 46 00 72 00 49 00 44 00 30 00 67 00 4a 00 33 00 56 00 7a 00 61 00 57 00 35 00 6e 00 49 00 46 00 4e 00 35 00 63 00 33 00 52 00 6c 00 62 00 54 00 } //10 FromBase64String('JGdscGFrID0gJ3VzaW5nIFN5c3RlbT
		$a_00_4 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 47 00 4a 00 68 00 5a 00 33 00 55 00 67 00 50 00 53 00 41 00 6e 00 64 00 58 00 4e 00 70 00 62 00 6d 00 63 00 67 00 55 00 33 00 6c 00 7a 00 64 00 47 00 56 00 74 00 4f 00 77 00 } //10 FromBase64String('JGJhZ3UgPSAndXNpbmcgU3lzdGVtOw
		$a_00_5 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 47 00 70 00 6c 00 61 00 32 00 4a 00 79 00 49 00 44 00 30 00 67 00 4a 00 33 00 56 00 7a 00 61 00 57 00 35 00 6e 00 49 00 46 00 4e 00 35 00 63 00 33 00 52 00 6c 00 62 00 54 00 } //10 FromBase64String('JGpla2JyID0gJ3VzaW5nIFN5c3RlbT
		$a_00_6 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 47 00 70 00 78 00 63 00 58 00 4a 00 6b 00 65 00 53 00 41 00 39 00 49 00 43 00 64 00 31 00 63 00 32 00 6c 00 75 00 5a 00 79 00 42 00 54 00 65 00 58 00 4e 00 30 00 5a 00 57 00 } //10 FromBase64String('JGpxcXJkeSA9ICd1c2luZyBTeXN0ZW
		$a_00_7 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 47 00 70 00 7a 00 63 00 6e 00 55 00 67 00 50 00 53 00 41 00 6e 00 64 00 58 00 4e 00 70 00 62 00 6d 00 63 00 67 00 55 00 33 00 6c 00 7a 00 64 00 47 00 56 00 74 00 4f 00 77 00 } //10 FromBase64String('JGpzcnUgPSAndXNpbmcgU3lzdGVtOw
		$a_00_8 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 47 00 52 00 36 00 63 00 6d 00 38 00 67 00 50 00 53 00 41 00 6e 00 64 00 58 00 4e 00 70 00 62 00 6d 00 63 00 67 00 55 00 33 00 6c 00 7a 00 64 00 47 00 56 00 74 00 4f 00 77 00 } //10 FromBase64String('JGR6cm8gPSAndXNpbmcgU3lzdGVtOw
		$a_00_9 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 47 00 52 00 69 00 59 00 57 00 63 00 67 00 50 00 53 00 41 00 6e 00 64 00 58 00 4e 00 70 00 62 00 6d 00 63 00 67 00 55 00 33 00 6c 00 7a 00 64 00 47 00 56 00 74 00 4f 00 77 00 } //10 FromBase64String('JGRiYWcgPSAndXNpbmcgU3lzdGVtOw
		$a_00_10 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 47 00 56 00 74 00 65 00 48 00 70 00 77 00 61 00 69 00 41 00 39 00 49 00 43 00 64 00 31 00 63 00 32 00 6c 00 75 00 5a 00 79 00 42 00 54 00 65 00 58 00 4e 00 30 00 5a 00 57 00 } //10 FromBase64String('JGVteHpwaiA9ICd1c2luZyBTeXN0ZW
		$a_00_11 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 48 00 70 00 77 00 5a 00 47 00 35 00 77 00 63 00 69 00 41 00 39 00 49 00 43 00 64 00 31 00 63 00 32 00 6c 00 75 00 5a 00 79 00 42 00 54 00 65 00 58 00 4e 00 30 00 5a 00 57 00 } //10 FromBase64String('JHpwZG5wciA9ICd1c2luZyBTeXN0ZW
		$a_00_12 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 48 00 5a 00 72 00 61 00 47 00 35 00 69 00 49 00 44 00 30 00 67 00 4a 00 33 00 56 00 7a 00 61 00 57 00 35 00 6e 00 49 00 46 00 4e 00 35 00 63 00 33 00 52 00 6c 00 62 00 54 00 } //10 FromBase64String('JHZraG5iID0gJ3VzaW5nIFN5c3RlbT
		$a_00_13 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 47 00 4e 00 77 00 61 00 58 00 70 00 69 00 62 00 69 00 41 00 39 00 49 00 43 00 64 00 31 00 63 00 32 00 6c 00 75 00 5a 00 79 00 42 00 54 00 65 00 58 00 4e 00 30 00 5a 00 57 00 } //10 FromBase64String('JGNwaXpibiA9ICd1c2luZyBTeXN0ZW
		$a_00_14 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 4a 00 48 00 42 00 74 00 5a 00 33 00 6c 00 78 00 61 00 43 00 41 00 39 00 49 00 43 00 64 00 31 00 63 00 32 00 6c 00 75 00 5a 00 79 00 42 00 54 00 65 00 58 00 4e 00 30 00 5a 00 57 00 } //10 FromBase64String('JHBtZ3lxaCA9ICd1c2luZyBTeXN0ZW
	condition:
		((#a_00_0  & 1)*100+(#a_00_1  & 1)*100+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_00_7  & 1)*10+(#a_00_8  & 1)*10+(#a_00_9  & 1)*10+(#a_00_10  & 1)*10+(#a_00_11  & 1)*10+(#a_00_12  & 1)*10+(#a_00_13  & 1)*10+(#a_00_14  & 1)*10) >=210
 
}