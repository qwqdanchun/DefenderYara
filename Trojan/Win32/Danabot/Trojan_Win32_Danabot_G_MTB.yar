
rule Trojan_Win32_Danabot_G_MTB{
	meta:
		description = "Trojan:Win32/Danabot.G!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {85 c0 74 68 85 d2 74 64 49 7c 61 56 53 8b 72 fc 8b 58 fc 29 ce d1 e1 01 ca 39 de 7c 46 85 db 7e } //01 00 
		$a_01_1 = {53 65 72 76 69 63 65 4d 61 69 6e 00 5f 5f 64 62 6b 5f 66 63 61 6c 6c 5f 77 72 61 70 70 65 72 00 64 62 6b 46 43 61 6c 6c 57 72 61 70 70 65 72 41 64 64 72 00 66 30 00 66 31 00 66 32 00 66 33 00 66 34 00 66 35 00 66 36 00 66 37 00 66 38 00 66 39 00 74 31 } //00 00 
	condition:
		any of ($a_*)
 
}