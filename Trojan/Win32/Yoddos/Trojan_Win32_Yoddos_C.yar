
rule Trojan_Win32_Yoddos_C{
	meta:
		description = "Trojan:Win32/Yoddos.C,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {23 25 64 3c 3c 3c 3c 3c 49 40 43 3c 3c 3c 3c 3c 25 73 21 } //01 00  #%d<<<<<I@C<<<<<%s!
		$a_01_1 = {53 79 6e 46 6c 6f 6f 64 } //01 00  SynFlood
		$a_01_2 = {49 43 4d 50 46 6c 6f 6f 64 } //01 00  ICMPFlood
		$a_01_3 = {55 44 50 46 6c 6f 6f 64 } //01 00  UDPFlood
		$a_01_4 = {55 44 50 53 6d 61 6c 6c 46 6c 6f 6f 64 } //01 00  UDPSmallFlood
		$a_01_5 = {54 43 50 46 6c 6f 6f 64 } //01 00  TCPFlood
		$a_01_6 = {4d 75 6c 74 69 54 43 50 46 6c 6f 6f 64 } //01 00  MultiTCPFlood
		$a_01_7 = {44 4e 53 46 6c 6f 6f 64 } //00 00  DNSFlood
	condition:
		any of ($a_*)
 
}