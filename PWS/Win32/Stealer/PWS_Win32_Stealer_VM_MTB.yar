
rule PWS_Win32_Stealer_VM_MTB{
	meta:
		description = "PWS:Win32/Stealer.VM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 c1 c7 05 90 01 08 01 05 90 01 04 8b 15 90 01 04 a1 90 01 04 89 02 90 09 0f 00 a1 90 01 04 a3 90 01 04 a1 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}