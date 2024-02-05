
rule Trojan_Win32_NanoBot_RC_MTB{
	meta:
		description = "Trojan:Win32/NanoBot.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 72 6f 6a 65 63 74 5c 4d 79 52 61 74 53 65 72 76 65 72 5c 52 65 6c 65 61 73 65 5c 4d 79 52 61 74 53 65 72 76 65 72 2e 70 64 62 } //01 00 
		$a_01_1 = {33 00 32 00 31 00 37 00 37 00 39 00 32 00 31 00 2d 00 39 00 46 00 36 00 37 00 2d 00 34 00 32 00 65 00 37 00 2d 00 42 00 45 00 31 00 46 00 2d 00 37 00 33 00 46 00 31 00 30 00 34 00 37 00 37 00 37 00 38 00 38 00 35 00 } //01 00 
		$a_01_2 = {4c 00 47 00 20 00 55 00 70 00 6c 00 75 00 73 00 2c 00 2e 00 43 00 4f 00 2e 00 4c 00 54 00 44 00 } //00 00 
	condition:
		any of ($a_*)
 
}