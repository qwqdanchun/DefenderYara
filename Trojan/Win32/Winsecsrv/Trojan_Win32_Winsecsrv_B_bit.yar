
rule Trojan_Win32_Winsecsrv_B_bit{
	meta:
		description = "Trojan:Win32/Winsecsrv.B!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {32 39 46 48 6b 65 68 4c 46 49 48 6b 64 6f 77 28 39 33 70 5b 6c 4b 46 48 4f 65 73 72 6c 77 65 68 6a 72 32 33 } //01 00 
		$a_01_1 = {00 61 64 69 6e 73 74 2e 64 6c 6c 00 64 6c 6c 5f 69 6e 69 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}