
rule Backdoor_Win32_Farfli_P{
	meta:
		description = "Backdoor:Win32/Farfli.P,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 61 63 6b 65 72 00 00 43 6c 4f 73 45 } //01 00 
		$a_00_1 = {6e 65 74 64 64 6f 73 } //00 00  netddos
	condition:
		any of ($a_*)
 
}