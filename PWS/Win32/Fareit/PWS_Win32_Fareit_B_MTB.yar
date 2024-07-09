
rule PWS_Win32_Fareit_B_MTB{
	meta:
		description = "PWS:Win32/Fareit.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_03_0 = {81 fa 41 41 41 41 0f 85 90 0a ff 00 46 [0-20] 8b 17 [0-20] 56 [0-20] 33 14 24 [0-20] 5e [0-20] 81 fa 41 41 41 41 0f 85 } //1
		$a_03_1 = {81 fa 41 41 41 41 75 90 0a ff 00 46 [0-20] ff 37 [0-20] 31 34 24 [0-20] 5a [0-20] 81 fa 41 41 41 41 75 } //1
		$a_03_2 = {bb 00 00 40 00 [0-30] 81 c3 00 10 00 00 [0-30] 8b 03 [0-30] bb [0-40] 81 c3 [0-40] 39 18 75 } //1
		$a_03_3 = {bb 00 10 40 00 [0-30] 8b 03 [0-30] bb [0-40] 81 c3 [0-40] 39 18 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=2
 
}
rule PWS_Win32_Fareit_B_MTB_2{
	meta:
		description = "PWS:Win32/Fareit.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 0a 00 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //1 MSVBVM60.DLL
		$a_03_1 = {31 34 24 eb 90 0a ff 00 ff (31|37) [0-ff] 31 34 24 [0-ff] 8b 0c 24 [0-ff] 89 0c 18 [0-ff] 83 c4 04 [0-ff] 83 (|) c7 c2 04 } //1
		$a_03_2 = {31 34 24 3d 90 0a ff 00 ff (31|37) [0-ff] 31 34 24 [0-ff] 8b 0c 24 [0-ff] 89 0c 18 [0-ff] 83 c4 04 [0-ff] 83 (|) c7 c2 04 } //1
		$a_03_3 = {31 34 24 e9 90 0a ff 00 ff 37 [0-ff] 31 34 24 [0-ff] 8b 0c 24 [0-ff] 83 c4 04 [0-ff] 83 c2 04 } //1
		$a_03_4 = {31 34 24 85 90 0a ff 00 ff (31|37) [0-ff] 31 34 24 [0-ff] 8f 04 90 03 01 01 10 18 [0-ff] 83 c2 04 [0-ff] 83 c7 04 } //1
		$a_03_5 = {31 34 24 e9 90 0a ff 00 ff (31|37) [0-ff] 31 34 24 [0-ff] 8f 04 90 03 01 01 10 18 [0-ff] 83 c2 04 [0-ff] 83 c7 04 } //1
		$a_03_6 = {31 34 24 66 90 0a ff 00 ff (31|37) [0-ff] 31 34 24 [0-ff] 8f 04 90 03 01 01 10 18 [0-ff] 83 c2 04 [0-ff] 83 c7 04 } //1
		$a_03_7 = {31 34 24 3d 90 0a ff 00 ff (31|37) [0-ff] 31 34 24 [0-ff] 8f 04 90 03 01 01 10 18 [0-ff] 83 c2 04 [0-ff] 83 c7 04 } //1
		$a_03_8 = {31 34 24 81 90 0a ff 00 ff (31|37) [0-ff] 31 34 24 [0-ff] 8f 04 90 03 01 01 10 18 [0-ff] 83 c2 04 [0-ff] 83 c7 04 } //1
		$a_03_9 = {31 34 24 eb 90 0a ff 00 ff (31|37) [0-ff] 31 34 24 [0-ff] 8f 04 90 03 01 01 10 18 [0-ff] 83 c2 04 [0-ff] 83 c7 04 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1) >=2
 
}