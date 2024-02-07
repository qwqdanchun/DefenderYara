
rule Trojan_Win32_FormBook_BU_MTB{
	meta:
		description = "Trojan:Win32/FormBook.BU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {42 00 6e 00 4f 00 44 00 73 00 31 00 6d 00 47 00 72 00 57 00 65 00 71 00 6c 00 34 00 46 00 59 00 71 00 55 00 62 00 78 00 43 00 56 00 74 00 56 00 32 00 63 00 6e 00 6d 00 41 00 67 00 69 00 73 00 59 00 6b 00 4a 00 34 00 } //02 00  BnODs1mGrWeql4FYqUbxCVtV2cnmAgisYkJ4
		$a_01_1 = {6a 00 33 00 41 00 37 00 52 00 74 00 65 00 43 00 61 00 6f 00 6b 00 34 00 59 00 4b 00 37 00 70 00 5a 00 51 00 31 00 33 00 35 00 } //02 00  j3A7RteCaok4YK7pZQ135
		$a_01_2 = {6c 00 4d 00 32 00 77 00 72 00 34 00 47 00 66 00 7a 00 59 00 6b 00 73 00 4a 00 6b 00 32 00 69 00 42 00 54 00 34 00 68 00 44 00 38 00 42 00 66 00 6d 00 65 00 42 00 75 00 31 00 6d 00 62 00 31 00 34 00 34 00 } //02 00  lM2wr4GfzYksJk2iBT4hD8BfmeBu1mb144
		$a_01_3 = {63 00 73 00 69 00 4e 00 70 00 45 00 70 00 45 00 41 00 63 00 4f 00 44 00 6d 00 31 00 66 00 4e 00 44 00 37 00 6b 00 49 00 4d 00 6b 00 37 00 6e 00 50 00 68 00 65 00 6e 00 37 00 4c 00 55 00 65 00 31 00 35 00 } //02 00  csiNpEpEAcODm1fND7kIMk7nPhen7LUe15
		$a_01_4 = {56 00 64 00 71 00 7a 00 58 00 4f 00 52 00 4c 00 31 00 4f 00 75 00 64 00 55 00 48 00 31 00 35 00 36 00 } //02 00  VdqzXORL1OudUH156
		$a_01_5 = {6f 00 72 00 36 00 73 00 6f 00 49 00 49 00 79 00 75 00 74 00 47 00 65 00 56 00 57 00 35 00 51 00 59 00 33 00 39 00 } //01 00  or6soIIyutGeVW5QY39
		$a_00_6 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00  MSVBVM60.DLL
	condition:
		any of ($a_*)
 
}