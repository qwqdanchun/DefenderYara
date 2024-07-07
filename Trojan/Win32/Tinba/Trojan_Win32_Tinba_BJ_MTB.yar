
rule Trojan_Win32_Tinba_BJ_MTB{
	meta:
		description = "Trojan:Win32/Tinba.BJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {52 00 45 00 57 00 20 00 69 00 73 00 20 00 72 00 6f 00 6f 00 6d 00 20 00 61 00 63 00 6f 00 75 00 73 00 74 00 69 00 63 00 73 00 20 00 61 00 6e 00 61 00 6c 00 79 00 73 00 69 00 73 00 20 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 20 00 66 00 6f 00 72 00 20 00 6d 00 65 00 61 00 73 00 75 00 72 00 69 00 6e 00 67 00 } //1 REW is room acoustics analysis software for measuring
		$a_01_1 = {54 00 65 00 78 00 74 00 43 00 6f 00 6e 00 76 00 2e 00 65 00 78 00 65 00 } //1 TextConv.exe
		$a_01_2 = {37 00 36 00 37 00 34 00 39 00 36 00 30 00 37 00 30 00 39 00 37 00 33 00 37 00 34 00 39 00 33 00 37 00 35 00 36 00 33 00 34 00 35 00 37 00 34 00 30 00 38 00 36 00 37 00 30 00 33 00 34 00 39 00 37 00 36 00 34 00 33 00 37 00 36 00 } //1 76749607097374937563457408670349764376
		$a_01_3 = {36 00 35 00 33 00 34 00 38 00 39 00 36 00 37 00 39 00 30 00 37 00 36 00 37 00 33 00 34 00 39 00 30 00 36 00 37 00 33 00 34 00 30 00 36 00 37 00 33 00 34 00 39 00 37 00 36 00 39 00 37 00 36 00 30 00 34 00 37 00 36 00 37 00 36 00 34 00 39 00 37 00 36 00 30 00 33 00 34 00 39 00 } //1 6534896790767349067340673497697604767649760349
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}