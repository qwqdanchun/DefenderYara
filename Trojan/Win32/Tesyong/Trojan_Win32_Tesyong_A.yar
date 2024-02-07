
rule Trojan_Win32_Tesyong_A{
	meta:
		description = "Trojan:Win32/Tesyong.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 6e 00 65 00 74 00 73 00 68 00 20 00 61 00 64 00 76 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 61 00 64 00 64 00 20 00 72 00 75 00 6c 00 65 00 20 00 6e 00 61 00 6d 00 65 00 3d 00 22 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 54 00 68 00 72 00 65 00 61 00 64 00 22 00 20 00 70 00 72 00 6f 00 74 00 6f 00 63 00 6f 00 6c 00 3d 00 54 00 43 00 50 00 20 00 64 00 69 00 72 00 3d 00 69 00 6e 00 20 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 61 00 6c 00 6c 00 6f 00 77 00 } //01 00  cmd /c netsh advfirewall firewall add rule name="System Thread" protocol=TCP dir=in action=allow
		$a_01_1 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 6e 00 65 00 74 00 73 00 68 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 73 00 65 00 74 00 20 00 6f 00 70 00 6d 00 6f 00 64 00 65 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //01 00  cmd /c netsh firewall set opmode disable
		$a_01_2 = {23 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 23 00 } //01 00  #Information#
		$a_01_3 = {70 00 6f 00 70 00 61 00 6c 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00  popall.com
		$a_01_4 = {48 00 6f 00 6e 00 67 00 53 00 79 00 } //01 00  HongSy
		$a_01_5 = {4b 69 6c 6c 53 65 6c 66 } //00 00  KillSelf
		$a_00_6 = {5d 04 00 } //00 f7 
	condition:
		any of ($a_*)
 
}