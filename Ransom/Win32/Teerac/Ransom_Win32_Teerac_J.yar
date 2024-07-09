
rule Ransom_Win32_Teerac_J{
	meta:
		description = "Ransom:Win32/Teerac.J,SIGNATURE_TYPE_PEHSTR_EXT,fffffffe 01 fffffffe 01 07 00 00 "
		
	strings :
		$a_03_0 = {56 6a 50 6a 03 56 6a 01 68 00 00 00 80 68 ?? ?? ?? ?? ff } //10
		$a_03_1 = {6a 00 6a 50 6a 03 6a 00 6a 01 68 00 00 00 80 68 ?? ?? ?? ?? ff } //10
		$a_03_2 = {6a 04 68 00 10 00 00 6a 04 ?? ff } //100
		$a_03_3 = {07 00 01 00 ff 90 09 02 00 c7 } //100
		$a_01_4 = {8b 43 50 8b 4b 34 6a 40 68 00 30 00 00 } //100
		$a_03_5 = {b0 00 00 00 ff 90 09 02 00 89 } //100
		$a_03_6 = {68 10 27 00 00 ff [0-02] ff 75 ?? ff [0-02] 6a 00 ff } //100
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_03_2  & 1)*100+(#a_03_3  & 1)*100+(#a_01_4  & 1)*100+(#a_03_5  & 1)*100+(#a_03_6  & 1)*100) >=510
 
}