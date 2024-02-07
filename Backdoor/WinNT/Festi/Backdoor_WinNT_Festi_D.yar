
rule Backdoor_WinNT_Festi_D{
	meta:
		description = "Backdoor:WinNT/Festi.D,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 02 00 "
		
	strings :
		$a_01_0 = {68 00 77 00 62 00 63 00 72 00 } //02 00  hwbcr
		$a_01_1 = {68 00 77 00 73 00 68 00 74 00 } //02 00  hwsht
		$a_01_2 = {65 63 6c 69 70 73 65 5c 62 6f 74 6e 65 74 5c 64 72 69 76 65 72 73 } //01 00  eclipse\botnet\drivers
		$a_01_3 = {5c 00 44 00 72 00 69 00 76 00 65 00 72 00 5c 00 74 00 64 00 78 00 } //01 00  \Driver\tdx
		$a_01_4 = {5c 00 44 00 72 00 69 00 76 00 65 00 72 00 5c 00 4e 00 54 00 49 00 43 00 45 00 } //01 00  \Driver\NTICE
		$a_01_5 = {6f 70 65 72 61 2e 65 78 65 } //01 00  opera.exe
		$a_01_6 = {74 68 65 62 61 74 2e 65 78 65 } //01 00  thebat.exe
		$a_01_7 = {74 68 75 6e 64 65 72 62 69 72 64 2e 65 78 65 } //01 00  thunderbird.exe
		$a_01_8 = {6d 73 69 6d 6e 2e 65 78 65 } //01 00  msimn.exe
		$a_01_9 = {74 65 6c 6e 65 74 2e 65 78 65 } //00 00  telnet.exe
	condition:
		any of ($a_*)
 
}