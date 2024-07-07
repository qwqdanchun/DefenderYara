
rule Backdoor_Win32_Nahelox_A{
	meta:
		description = "Backdoor:Win32/Nahelox.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {2f 00 63 00 20 00 6e 00 65 00 74 00 73 00 68 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 73 00 65 00 74 00 20 00 6f 00 70 00 6d 00 6f 00 64 00 65 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //2 /c netsh firewall set opmode disable
		$a_01_1 = {53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 48 00 65 00 6c 00 65 00 6e 00 61 00 5c 00 } //2 System32\Helena\
		$a_01_2 = {77 69 6e 5f 73 39 31 32 } //2 win_s912
		$a_01_3 = {8b 45 fc 8b 80 8c 03 00 00 8b 80 a0 02 00 00 8b 55 fc 8b 92 9c 03 00 00 8b 08 ff 51 7c } //4
		$a_03_4 = {8b 45 f0 50 b8 90 01 02 4b 00 89 45 f4 c6 45 f8 11 8d 45 f4 50 6a 00 b9 26 27 00 00 b2 01 a1 14 96 4b 00 90 00 } //4
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*4+(#a_03_4  & 1)*4) >=10
 
}