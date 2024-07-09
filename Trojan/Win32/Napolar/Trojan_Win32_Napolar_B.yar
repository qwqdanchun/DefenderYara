
rule Trojan_Win32_Napolar_B{
	meta:
		description = "Trojan:Win32/Napolar.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {76 00 3d 00 25 00 64 00 2e 00 25 00 64 00 26 00 75 00 3d 00 25 00 73 00 26 00 63 00 3d 00 25 00 73 00 26 00 73 00 3d 00 25 00 73 00 26 00 77 00 3d 00 25 00 64 00 2e 00 } //1 v=%d.%d&u=%s&c=%s&s=%s&w=%d.
		$a_03_1 = {6a 00 8b 43 10 50 8b c7 03 43 14 50 8b 45 ?? 03 43 0c 50 e8 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 83 c3 28 4e 75 } //1
		$a_03_2 = {81 38 50 45 00 00 75 ?? 8b 45 ?? 8b 70 78 03 f3 8b 46 18 48 85 c0 72 ?? 40 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}