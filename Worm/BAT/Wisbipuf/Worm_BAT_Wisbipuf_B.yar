
rule Worm_BAT_Wisbipuf_B{
	meta:
		description = "Worm:BAT/Wisbipuf.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 "
		
	strings :
		$a_01_0 = {69 6e 66 65 63 74 6d 61 69 6e 00 } //1
		$a_01_1 = {69 6e 66 65 63 74 5f 6d 65 00 } //1 湩敦瑣浟e
		$a_01_2 = {63 68 65 63 6b 73 68 6f 72 74 00 } //1
		$a_01_3 = {49 6e 6a 65 63 74 49 63 6f 6e 00 } //1
		$a_01_4 = {52 65 6d 6f 76 65 46 75 6e 63 74 69 6f 6e 00 } //1
		$a_01_5 = {69 6e 66 65 63 74 00 } //1
		$a_01_6 = {67 65 6e 65 72 61 74 65 64 5f 69 6e 66 00 } //1 敧敮慲整彤湩f
		$a_01_7 = {75 70 64 61 74 65 63 68 65 63 6b 00 } //1 灵慤整档捥k
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=4
 
}