
rule PWS_Win32_Banker_UD_bit{
	meta:
		description = "PWS:Win32/Banker.UD!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 55 fc 0f b6 54 32 ff 66 33 d3 0f b7 d2 2b d6 33 d6 2b d6 33 d6 88 54 30 ff 43 } //01 00 
		$a_03_1 = {8a 44 02 ff 32 d8 33 d2 8a d0 32 9a 90 01 04 32 9a 90 01 04 32 9a 90 01 04 32 9a 90 01 04 32 9a 90 01 04 32 9a 90 01 04 32 c3 8b d8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}