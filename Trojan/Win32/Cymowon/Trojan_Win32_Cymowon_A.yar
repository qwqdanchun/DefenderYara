
rule Trojan_Win32_Cymowon_A{
	meta:
		description = "Trojan:Win32/Cymowon.A,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {47 00 65 00 74 00 2d 00 57 00 4d 00 49 00 6f 00 62 00 6a 00 65 00 63 00 74 00 20 00 2d 00 4e 00 61 00 6d 00 65 00 73 00 70 00 61 00 63 00 65 00 20 00 72 00 6f 00 6f 00 74 00 5c 00 53 00 75 00 62 00 73 00 63 00 72 00 69 00 70 00 74 00 69 00 6f 00 6e 00 20 00 2d 00 43 00 6c 00 61 00 73 00 73 00 20 00 5f 00 5f 00 46 00 69 00 6c 00 74 00 65 00 72 00 54 00 6f 00 43 00 6f 00 6e 00 73 00 75 00 6d 00 65 00 72 00 42 00 69 00 6e 00 64 00 69 00 6e 00 67 00 } //01 00  Get-WMIobject -Namespace root\Subscription -Class __FilterToConsumerBinding
		$a_02_1 = {69 00 65 00 78 00 90 02 04 28 00 6e 00 65 00 77 00 2d 00 6f 00 62 00 6a 00 65 00 63 00 74 00 20 00 6e 00 65 00 74 00 2e 00 77 00 65 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 29 00 2e 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}