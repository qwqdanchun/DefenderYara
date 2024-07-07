
rule Trojan_Win32_AceLog_A_dha{
	meta:
		description = "Trojan:Win32/AceLog.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_03_0 = {68 06 02 00 00 66 89 85 90 01 10 e8 90 01 04 68 04 01 00 00 8d 85 90 01 06 e8 90 01 08 ff 15 90 01 14 68 08 02 00 00 50 e8 90 01 04 6a 44 90 00 } //1
		$a_03_1 = {52 00 55 00 4e 00 44 00 4c 00 4c 00 33 00 32 00 2e 00 90 01 01 00 58 00 45 00 20 00 22 00 25 00 73 00 22 00 2c 00 20 00 23 00 31 00 00 00 2a 00 00 00 2e 00 00 00 2e 00 2e 00 00 00 90 00 } //1
		$a_03_2 = {52 00 55 00 4e 00 44 00 4c 00 90 01 01 00 33 00 32 00 2e 00 45 00 58 00 45 00 20 00 22 00 25 00 73 00 22 00 2c 00 20 00 23 00 31 00 00 00 63 6d 64 20 2f 90 01 01 20 44 45 4c 20 00 20 22 00 00 90 00 } //65526
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*65526) >=1
 
}