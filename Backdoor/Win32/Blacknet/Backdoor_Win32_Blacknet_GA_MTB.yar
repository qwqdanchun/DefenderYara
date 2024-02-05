
rule Backdoor_Win32_Blacknet_GA_MTB{
	meta:
		description = "Backdoor:Win32/Blacknet.GA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0e 00 00 01 00 "
		
	strings :
		$a_02_0 = {41 00 6e 00 74 00 69 00 90 02 02 44 00 65 00 62 00 75 00 67 00 67 00 69 00 6e 00 67 00 90 00 } //01 00 
		$a_02_1 = {41 6e 74 69 90 02 02 44 65 62 75 67 67 69 6e 67 90 00 } //01 00 
		$a_80_2 = {41 6e 74 69 56 4d } //AntiVM  01 00 
		$a_80_3 = {44 69 73 61 62 6c 65 57 44 } //DisableWD  01 00 
		$a_80_4 = {2e 44 44 4f 53 } //.DDOS  01 00 
		$a_80_5 = {42 61 6e 64 77 69 64 74 68 46 6c 6f 6f 64 } //BandwidthFlood  01 00 
		$a_80_6 = {50 6f 73 74 48 54 54 50 } //PostHTTP  01 00 
		$a_80_7 = {44 69 73 63 6f 72 64 54 6f 6b 65 6e } //DiscordToken  01 00 
		$a_80_8 = {52 65 6d 6f 74 65 44 65 73 6b 74 6f 70 } //RemoteDesktop  01 00 
		$a_80_9 = {57 61 74 63 68 64 6f 67 } //Watchdog  01 00 
		$a_80_10 = {53 63 68 54 61 73 6b } //SchTask  01 00 
		$a_80_11 = {53 74 65 61 6c 74 68 5f 4d 6f 64 65 } //Stealth_Mode  01 00 
		$a_80_12 = {45 6e 63 72 79 70 74 69 6f 6e } //Encryption  01 00 
		$a_80_13 = {55 53 42 53 70 72 65 61 64 } //USBSpread  00 00 
	condition:
		any of ($a_*)
 
}