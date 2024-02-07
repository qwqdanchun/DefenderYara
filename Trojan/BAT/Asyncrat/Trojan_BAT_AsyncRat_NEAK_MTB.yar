
rule Trojan_BAT_AsyncRat_NEAK_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.NEAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {56 65 6e 6f 6d 20 52 41 54 } //05 00  Venom RAT
		$a_01_1 = {43 6c 69 65 6e 74 2e 49 6e 73 74 61 6c 6c } //05 00  Client.Install
		$a_01_2 = {41 67 65 6e 74 73 45 78 68 61 75 73 74 65 64 } //05 00  AgentsExhausted
		$a_01_3 = {43 48 6d 46 64 44 67 4a 6b 4a 49 6a } //02 00  CHmFdDgJkJIj
		$a_01_4 = {41 6e 74 69 76 69 72 75 73 } //01 00  Antivirus
		$a_01_5 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //00 00  GetExecutingAssembly
	condition:
		any of ($a_*)
 
}