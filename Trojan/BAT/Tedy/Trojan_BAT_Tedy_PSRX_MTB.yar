
rule Trojan_BAT_Tedy_PSRX_MTB{
	meta:
		description = "Trojan:BAT/Tedy.PSRX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {06 6f 1c 00 00 0a 28 90 01 01 00 00 0a 0d 73 1d 00 00 0a 28 90 01 01 00 00 0a 07 6f 90 01 01 00 00 0a 28 90 01 01 00 00 0a 07 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 09 16 09 8e 69 6f 90 01 01 00 00 0a 0d 02 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}