
rule Trojan_Win32_Bandra_GFM_MTB{
	meta:
		description = "Trojan:Win32/Bandra.GFM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {14 14 4e 13 66 c7 45 fc 90 01 02 8a 45 d4 30 44 0d d5 41 83 f9 28 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}