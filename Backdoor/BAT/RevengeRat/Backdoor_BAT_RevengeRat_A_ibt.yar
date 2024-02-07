
rule Backdoor_BAT_RevengeRat_A_ibt{
	meta:
		description = "Backdoor:BAT/RevengeRat.A!ibt,SIGNATURE_TYPE_PEHSTR,06 00 06 00 05 00 00 03 00 "
		
	strings :
		$a_01_0 = {52 00 65 00 76 00 65 00 6e 00 67 00 65 00 2d 00 52 00 41 00 54 00 } //02 00  Revenge-RAT
		$a_01_1 = {33 00 2e 00 74 00 63 00 70 00 2e 00 6e 00 67 00 72 00 6f 00 6b 00 2e 00 69 00 6f 00 } //01 00  3.tcp.ngrok.io
		$a_01_2 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 41 00 6e 00 74 00 69 00 56 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00  Select * from AntiVirusProduct
		$a_01_3 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00  SELECT * FROM FirewallProduct
		$a_01_4 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 } //00 00  select * from Win32_Processor
	condition:
		any of ($a_*)
 
}