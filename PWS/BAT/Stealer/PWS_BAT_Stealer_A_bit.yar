
rule PWS_BAT_Stealer_A_bit{
	meta:
		description = "PWS:BAT/Stealer.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 74 65 61 6c 43 6c 69 65 6e 74 53 69 64 65 } //01 00  stealClientSide
		$a_01_1 = {4e 00 65 00 77 00 20 00 44 00 69 00 73 00 63 00 6f 00 72 00 64 00 20 00 56 00 69 00 63 00 74 00 65 00 6d 00 } //01 00  New Discord Victem
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {64 00 69 00 73 00 63 00 6f 00 72 00 64 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 20 00 53 00 74 00 6f 00 72 00 61 00 67 00 65 00 5c 00 68 00 74 00 74 00 70 00 73 00 5f 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 5f 00 30 00 2e 00 6c 00 6f 00 63 00 61 00 6c 00 73 00 74 00 6f 00 72 00 61 00 67 00 65 00 } //00 00  discord\Local Storage\https_discordapp.com_0.localstorage
	condition:
		any of ($a_*)
 
}