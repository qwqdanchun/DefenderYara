
rule Trojan_Win32_Airostor_A{
	meta:
		description = "Trojan:Win32/Airostor.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 00 75 00 75 00 71 00 3b 00 30 00 30 00 } //01 00  iuuq;00
		$a_01_1 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 70 00 69 00 6e 00 67 00 20 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 2d 00 6e 00 20 00 33 00 20 00 26 00 26 00 20 00 64 00 65 00 6c 00 20 00 } //01 00  cmd /c ping 127.0.0.1 -n 3 && del 
		$a_01_2 = {74 00 6f 00 6e 00 67 00 6a 00 69 00 2f 00 67 00 2e 00 61 00 73 00 70 00 3f 00 6d 00 61 00 63 00 3d 00 } //00 00  tongji/g.asp?mac=
	condition:
		any of ($a_*)
 
}