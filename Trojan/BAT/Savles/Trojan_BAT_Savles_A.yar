
rule Trojan_BAT_Savles_A{
	meta:
		description = "Trojan:BAT/Savles.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {73 00 61 00 76 00 65 00 26 00 74 00 3d 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 26 00 65 00 64 00 3d 00 31 00 26 00 64 00 3d 00 } //1 save&t=process&ed=1&d=
		$a_01_1 = {73 00 61 00 76 00 65 00 26 00 74 00 3d 00 66 00 69 00 6c 00 65 00 73 00 26 00 64 00 3d 00 5b 00 6e 00 64 00 63 00 5d 00 } //1 save&t=files&d=[ndc]
		$a_01_2 = {69 00 75 00 70 00 6c 00 6f 00 61 00 64 00 26 00 74 00 3d 00 31 00 } //1 iupload&t=1
		$a_01_3 = {74 00 78 00 74 00 2e 00 78 00 43 00 64 00 4e 00 78 00 } //1 txt.xCdNx
		$a_01_4 = {74 00 2d 00 20 00 66 00 2d 00 20 00 6c 00 2d 00 20 00 6e 00 77 00 6f 00 64 00 74 00 75 00 68 00 53 00 } //1 t- f- l- nwodtuhS
		$a_01_5 = {3d 00 64 00 6d 00 63 00 26 00 6e 00 6f 00 69 00 74 00 63 00 6e 00 75 00 66 00 } //1 =dmc&noitcnuf
		$a_01_6 = {64 00 61 00 6f 00 6c 00 70 00 75 00 } //1 daolpu
		$a_01_7 = {3d 00 72 00 65 00 73 00 75 00 26 00 } //1 =resu&
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}