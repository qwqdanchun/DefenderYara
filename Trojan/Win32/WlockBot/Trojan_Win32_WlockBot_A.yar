
rule Trojan_Win32_WlockBot_A{
	meta:
		description = "Trojan:Win32/WlockBot.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {b8 00 00 00 40 0f a2 89 5d 90 01 01 89 4d 90 01 01 89 55 90 01 01 81 7d 90 01 01 20 6c 72 70 5b 75 1e 81 7d 90 01 01 65 70 79 68 75 15 81 7d 90 01 01 20 20 76 72 90 00 } //1
		$a_01_1 = {c7 40 04 65 74 00 00 8b 42 04 81 00 73 6f 63 6b 8b 42 08 c7 00 63 6c 6f 73 8b 42 08 c7 40 04 65 73 6f 63 } //1
		$a_01_2 = {2b d1 d1 fa 66 89 04 56 58 6a 45 66 89 44 56 02 58 6a 31 66 89 44 56 04 58 6a 55 66 89 44 56 06 66 89 44 56 08 58 6a 70 } //1
		$a_01_3 = {77 69 6e 6c 6f 63 6b 65 72 5c 62 69 6e 5c 72 65 6c 65 61 73 65 5c 62 6f 74 2e 70 64 62 } //2 winlocker\bin\release\bot.pdb
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2) >=3
 
}