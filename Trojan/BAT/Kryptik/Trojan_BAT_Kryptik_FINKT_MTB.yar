
rule Trojan_BAT_Kryptik_FINKT_MTB{
	meta:
		description = "Trojan:BAT/Kryptik.FINKT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 "
		
	strings :
		$a_01_0 = {24 61 33 39 65 32 61 65 30 2d 64 62 66 65 2d 34 35 66 63 2d 38 39 35 33 2d 64 32 66 37 37 37 38 63 65 32 34 38 } //10 $a39e2ae0-dbfe-45fc-8953-d2f7778ce248
		$a_01_1 = {43 46 30 30 31 32 33 31 } //1 CF001231
		$a_01_2 = {43 46 32 33 34 30 35 32 } //1 CF234052
		$a_01_3 = {43 46 33 32 31 34 38 31 32 33 } //1 CF32148123
		$a_01_4 = {43 46 33 34 32 34 32 33 35 36 36 35 } //1 CF3424235665
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=14
 
}