
rule Trojan_BAT_AveMaria_MBEH_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.MBEH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 64 64 66 66 68 6b 65 64 66 64 64 66 66 66 66 67 6a 66 73 66 6b 64 67 73 61 63 73 61 66 70 00 73 67 66 68 6a 66 66 66 66 64 72 66 68 64 64 66 68 66 66 66 61 6b 64 66 73 66 73 73 63 66 67 64 62 00 64 6a 66 66 66 6b 68 67 64 66 66 61 66 63 66 64 73 73 66 6b 66 68 67 6a 00 66 } //00 00  摳晤桦敫晤摤晦晦橧獦武杤慳獣晡p杳桦晪晦摦晲摨晤晨晦歡晤晳獳晣摧b橤晦武杨晤慦捦摦獳武桦橧昀
	condition:
		any of ($a_*)
 
}