
rule Trojan_Win32_Strab_GPJ_MTB{
	meta:
		description = "Trojan:Win32/Strab.GPJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8d a4 24 00 00 00 00 8b 0d 90 01 1c 30 14 1e 83 ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}