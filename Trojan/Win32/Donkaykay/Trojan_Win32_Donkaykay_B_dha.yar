
rule Trojan_Win32_Donkaykay_B_dha{
	meta:
		description = "Trojan:Win32/Donkaykay.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {20 46 61 69 6c 65 64 20 43 72 65 61 74 65 50 69 63 6b 28 29 21 } //02 00   Failed CreatePick()!
		$a_01_1 = {20 43 72 65 61 74 65 20 70 61 74 65 20 45 72 72 6f 72 21 20 25 64 } //01 00   Create pate Error! %d
		$a_01_2 = {20 68 61 6e 64 20 25 64 20 25 64 20 25 73 25 73 } //01 00   hand %d %d %s%s
		$a_01_3 = {5b 2d 5d 20 45 6e 20 66 61 69 6c 65 64 } //01 00  [-] En failed
		$a_01_4 = {5b 2d 5d 20 63 6f 6e 6e 65 63 74 69 6f 6e 20 74 6f 20 25 73 3a 25 64 20 65 72 72 6f 72 21 3a 25 64 } //02 00  [-] connection to %s:%d error!:%d
		$a_01_5 = {47 00 65 00 74 00 20 00 74 00 68 00 65 00 20 00 70 00 72 00 6f 00 78 00 79 00 32 00 20 00 69 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 20 00 25 00 73 00 } //03 00  Get the proxy2 information %s
		$a_01_6 = {7e 00 54 00 61 00 6c 00 6c 00 31 00 6e 00 65 00 74 00 31 00 39 00 2e 00 74 00 6d 00 70 00 } //00 00  ~Tall1net19.tmp
	condition:
		any of ($a_*)
 
}