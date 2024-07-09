
rule Ransom_Win32_Filecoder_PG_MTB{
	meta:
		description = "Ransom:Win32/Filecoder.PG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {49 66 20 79 6f 75 20 77 61 6e 74 20 72 65 73 74 6f 72 65 20 79 6f 75 72 20 66 69 6c 65 73 20 77 72 69 74 65 20 6f 6e 20 65 6d 61 69 6c } //1 If you want restore your files write on email
		$a_00_1 = {49 6e 20 74 68 65 20 73 75 62 6a 65 63 74 20 77 72 69 74 65 20 2d 20 69 64 2d 30 35 32 31 24 7b 43 4f 44 45 7d } //1 In the subject write - id-0521${CODE}
		$a_00_2 = {44 6f 20 6e 6f 74 20 74 72 79 20 74 6f 20 72 65 63 6f 76 65 72 20 64 61 74 61 2c 20 69 74 27 73 20 77 61 73 74 69 6e 67 20 79 6f 75 72 20 74 69 6d 65 2e } //1 Do not try to recover data, it's wasting your time.
		$a_00_3 = {45 76 65 72 79 20 37 20 64 61 79 73 20 74 68 65 20 70 72 69 63 65 20 64 6f 75 62 6c 65 73 2e } //1 Every 7 days the price doubles.
		$a_00_4 = {5c 00 21 00 3d 00 48 00 6f 00 77 00 5f 00 72 00 65 00 63 00 6f 00 76 00 65 00 72 00 79 00 5f 00 66 00 69 00 6c 00 65 00 73 00 3d 00 21 00 2e 00 74 00 78 00 74 00 } //1 \!=How_recovery_files=!.txt
		$a_02_5 = {2e 00 73 00 71 00 6c 00 [0-0a] 2e 00 6d 00 64 00 66 00 [0-0a] 2e 00 74 00 78 00 74 00 [0-0a] 2e 00 64 00 62 00 66 00 [0-0a] 2e 00 63 00 6b 00 70 00 [0-0a] 2e 00 64 00 61 00 63 00 70 00 61 00 63 00 [0-0a] 2e 00 64 00 62 00 33 00 [0-0a] 2e 00 64 00 74 00 78 00 73 00 [0-0a] 2e 00 6d 00 64 00 74 00 [0-0a] 2e 00 73 00 64 00 66 00 [0-0a] 2e 00 4d 00 44 00 46 00 [0-0a] 2e 00 44 00 42 00 46 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_02_5  & 1)*1) >=6
 
}