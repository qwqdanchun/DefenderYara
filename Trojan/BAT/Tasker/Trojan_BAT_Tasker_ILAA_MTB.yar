
rule Trojan_BAT_Tasker_ILAA_MTB{
	meta:
		description = "Trojan:BAT/Tasker.ILAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {8e 69 5d 1f 09 58 1f 0c 58 1f 15 59 91 61 90 01 01 08 20 0e 02 00 00 58 20 0d 02 00 00 59 1b 59 1b 58 90 01 01 8e 69 5d 1f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}