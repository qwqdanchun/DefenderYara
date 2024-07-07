
rule Worm_BAT_Knowlog_C{
	meta:
		description = "Worm:BAT/Knowlog.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {67 65 74 4d 53 4e 37 35 50 61 73 73 77 6f 72 64 73 00 } //1 敧䵴乓㔷慐獳潷摲s
		$a_01_1 = {6d 5f 4d 53 4e 50 61 73 73 00 } //1 彭卍偎獡s
		$a_01_2 = {6c 61 6e 69 6e 66 65 63 74 00 } //1 慬楮普捥t
		$a_01_3 = {67 65 74 5f 4c 6f 67 69 6e 00 } //1 敧彴潌楧n
		$a_01_4 = {73 70 72 65 61 64 5f 30 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}