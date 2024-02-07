
rule Trojan_BAT_AsyncRat_NEM_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.NEM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {07 28 0b 00 00 06 28 3a 00 00 0a 00 07 28 38 00 00 0a 26 00 2b 1c } //04 00 
		$a_01_1 = {62 00 61 00 63 00 6b 00 64 00 6f 00 72 00 32 00 } //04 00  backdor2
		$a_01_2 = {43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 41 00 6c 00 6c 00 20 00 55 00 73 00 65 00 72 00 73 00 5c 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 20 00 44 00 61 00 74 00 61 00 5c 00 64 00 6c 00 6c 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //04 00  C:\Documents and Settings\All Users\Application Data\dllhost.exe
		$a_01_3 = {57 00 70 00 66 00 41 00 70 00 70 00 31 00 2e 00 65 00 78 00 65 00 } //00 00  WpfApp1.exe
	condition:
		any of ($a_*)
 
}