
rule Trojan_Win32_Tibs_gen_B{
	meta:
		description = "Trojan:Win32/Tibs.gen!B,SIGNATURE_TYPE_PEHSTR,08 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 69 62 73 6c 6f 61 64 65 72 } //02 00  tibsloader
		$a_01_1 = {25 73 2f 25 73 3f 76 3d 25 73 26 61 63 74 3d 25 } //02 00  %s/%s?v=%s&act=%
		$a_01_2 = {26 61 69 64 3d 25 73 26 73 6b 69 64 3d 25 73 } //01 00  &aid=%s&skid=%s
		$a_01_3 = {25 73 3a 25 30 34 64 25 30 32 64 25 30 32 64 25 } //01 00  %s:%04d%02d%02d%
		$a_01_4 = {63 3d 25 73 26 63 69 64 3d 25 64 } //01 00  c=%s&cid=%d
		$a_01_5 = {54 49 42 53 25 73 } //03 00  TIBS%s
		$a_01_6 = {63 67 69 2d 62 69 6e 2f 25 73 3f 70 72 6f 67 3d 6c 64 72 26 76 65 72 3d 25 73 26 63 6f 64 65 3d 25 64 26 69 6e 66 6f 3d 25 73 } //00 00  cgi-bin/%s?prog=ldr&ver=%s&code=%d&info=%s
	condition:
		any of ($a_*)
 
}