
rule Trojan_Win32_Killav_FE_dll{
	meta:
		description = "Trojan:Win32/Killav.FE!dll,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 4f d1 c1 5b 90 09 1e 00 c6 45 90 01 01 61 c6 45 90 01 01 76 c6 45 90 01 01 70 c6 45 90 01 01 2e 88 45 90 01 01 88 5d 90 01 01 88 45 90 01 01 c6 45 90 01 01 00 90 90 90 00 } //01 00 
		$a_03_1 = {81 ec 50 03 00 00 b0 73 53 88 45 90 01 01 88 45 90 01 01 b0 6b b3 78 88 45 90 01 01 88 45 90 01 01 b0 6c b2 2f 88 45 90 01 01 88 45 90 01 01 b0 65 b1 20 90 00 } //01 00 
		$a_01_2 = {64 79 73 31 68 7b 68 } //01 00  dys1h{h
		$a_01_3 = {66 72 71 69 6c 6a 23 64 79 73 23 76 77 64 75 77 40 23 67 6c 76 64 65 6f 68 67 } //00 00  frqilj#dys#vwduw@#glvdeohg
	condition:
		any of ($a_*)
 
}