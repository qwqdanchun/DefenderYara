
rule Trojan_Win32_Smokeloader_AMAA_MTB{
	meta:
		description = "Trojan:Win32/Smokeloader.AMAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {30 0c 30 83 ff 0f 75 90 02 1e 6a 00 6a 00 6a 00 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}