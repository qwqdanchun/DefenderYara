
rule Trojan_BAT_zgRAT_NEAA_MTB{
	meta:
		description = "Trojan:BAT/zgRAT.NEAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {64 65 65 39 64 66 30 65 2d 62 33 31 63 2d 34 65 38 38 2d 39 63 64 31 2d 65 66 38 66 35 39 31 33 36 30 64 34 } //02 00  dee9df0e-b31c-4e88-9cd1-ef8f591360d4
		$a_01_1 = {48 48 68 48 68 37 36 2e 65 78 65 } //00 00  HHhHh76.exe
	condition:
		any of ($a_*)
 
}