
rule Trojan_Win32_Phorpiex_AE_MTB{
	meta:
		description = "Trojan:Win32/Phorpiex.AE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {33 7d f8 33 4d fc 89 7d f8 89 4d fc 8b 55 f4 8b 45 08 8b 4d f4 8b 75 08 } //01 00 
		$a_01_1 = {31 38 35 2e 32 31 35 2e 31 31 33 2e 36 36 2f 74 77 69 7a 74 } //01 00  185.215.113.66/twizt
		$a_01_2 = {2f 00 63 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 2e 00 5c 00 25 00 73 00 20 00 26 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 2e 00 5c 00 25 00 73 00 5c 00 56 00 6f 00 6c 00 44 00 72 00 69 00 76 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  /c start .\%s & start .\%s\VolDriver.exe
		$a_01_3 = {73 00 5c 00 25 00 64 00 25 00 64 00 2e 00 65 00 78 00 65 00 } //00 00  s\%d%d.exe
	condition:
		any of ($a_*)
 
}