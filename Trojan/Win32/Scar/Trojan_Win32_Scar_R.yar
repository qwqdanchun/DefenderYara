
rule Trojan_Win32_Scar_R{
	meta:
		description = "Trojan:Win32/Scar.R,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {7e 4f 8b 45 f0 8a 8e 90 01 04 30 0c 18 e8 90 00 } //1
		$a_03_1 = {83 78 14 10 59 72 02 8b 00 56 50 ff d3 50 ff 15 90 01 1d ff ff 8b 45 c0 b9 4d 5a 00 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}