
rule Trojan_Win64_Tedy_SPS_MTB{
	meta:
		description = "Trojan:Win64/Tedy.SPS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {4c 8d 8d 68 01 00 00 45 33 c0 b2 01 8b cb e8 90 01 04 ff c3 83 fb 24 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}