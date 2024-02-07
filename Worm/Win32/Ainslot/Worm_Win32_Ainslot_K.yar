
rule Worm_Win32_Ainslot_K{
	meta:
		description = "Worm:Win32/Ainslot.K,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 3d 2e 5c 52 45 43 59 43 4c 45 52 5c 53 2d 31 2d 35 2d 32 31 2d 33 34 34 31 34 38 35 30 34 31 2d 39 31 38 34 37 38 31 39 36 2d 31 37 34 38 36 30 32 36 33 2d 31 30 30 34 5c } //01 00  shell\open\command=.\RECYCLER\S-1-5-21-3441485041-918478196-174860263-1004\
		$a_01_1 = {25 63 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 } //01 00  %c:\autorun.inf
		$a_01_2 = {6c 67 78 66 73 72 76 63 } //01 00  lgxfsrvc
		$a_01_3 = {31 31 35 2e 31 34 35 2e 32 32 39 2e 38 35 } //01 00  115.145.229.85
		$a_01_4 = {2d 2d 38 63 62 61 37 63 30 62 34 36 38 31 66 36 65 } //00 00  --8cba7c0b4681f6e
	condition:
		any of ($a_*)
 
}