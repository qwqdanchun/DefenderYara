
rule Trojan_BAT_Crysan_GPA_MTB{
	meta:
		description = "Trojan:BAT/Crysan.GPA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_01_0 = {56 00 46 00 5a 00 78 00 55 00 55 00 46 00 42 00 54 00 55 00 46 00 42 00 87 65 55 00 46 00 46 00 87 65 55 00 46 00 42 00 87 65 53 00 38 00 76 00 4f 00 45 00 46 00 42 00 54 00 47 00 64 00 42 00 87 65 55 00 46 00 42 00 87 65 55 00 46 00 42 00 87 65 55 00 46 00 52 00 87 65 55 00 46 00 42 00 87 65 } //5
		$a_01_1 = {00 52 65 70 6c 61 63 65 00 } //5
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5) >=10
 
}