
rule Trojan_Win32_Glupteba_DHI_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.DHI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {81 ff 69 04 00 00 90 13 e8 90 01 04 30 04 1e 46 3b f7 7c d9 90 00 } //01 00 
		$a_02_1 = {c1 ee 10 81 3d 90 01 04 cf 12 00 00 90 13 8b 8c 24 90 01 04 8b c6 5e 33 cc 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}