
rule TrojanProxy_Win32_SilverMob_A_dha{
	meta:
		description = "TrojanProxy:Win32/SilverMob.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 05 00 00 "
		
	strings :
		$a_03_0 = {b2 c0 50 51 c6 44 24 0c [0-05] c6 44 24 0e ?? c6 44 24 0f ?? c6 44 24 11 ?? c6 44 24 12 ?? c6 44 24 14 ?? c6 44 24 15 ?? c6 44 24 16 [0-05] c6 44 24 18 ?? c6 44 24 19 ?? c6 44 24 1a ?? c6 44 24 1b ?? e8 (?? ?? ?? ?? 33|c0 ?? ?? ?? ?? 83) c4 1c } //20
		$a_03_1 = {66 81 fe 34 80 75 ?? 6a 00 8d 44 24 ?? 68 27 80 00 00 50 e8 ?? ?? 00 00 } //2
		$a_01_2 = {6e 00 65 00 74 00 73 00 68 00 2e 00 65 00 78 00 65 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 61 00 64 00 64 00 20 00 } //2 netsh.exe firewall add 
		$a_01_3 = {6e 00 65 00 74 00 73 00 68 00 2e 00 65 00 78 00 65 00 20 00 61 00 64 00 76 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 61 00 64 00 64 00 } //2 netsh.exe advfirewall firewall add
		$a_02_4 = {69 67 66 78 [0-08] 2e 90 05 03 03 61 2d 7a } //1
	condition:
		((#a_03_0  & 1)*20+(#a_03_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_02_4  & 1)*1) >=22
 
}