
rule Trojan_Win32_Emotet_AE{
	meta:
		description = "Trojan:Win32/Emotet.AE,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 61 63 65 5c 7b 61 61 35 62 36 61 38 30 2d 62 38 33 34 2d 31 31 64 30 2d 39 33 32 66 2d 30 30 61 30 63 39 30 64 63 61 61 39 7d } //00 00 
	condition:
		any of ($a_*)
 
}