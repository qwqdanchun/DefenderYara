
rule Trojan_Win32_CryptInject_BC_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.BC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {86 5a 88 3a 81 ac 24 90 01 04 4c ab 80 7e 81 ac 24 90 01 04 53 27 aa 0d 81 84 24 90 01 04 72 9d 8b 2b 81 ac 24 90 01 04 e6 c7 05 56 81 84 24 90 01 04 9c 98 05 02 81 ac 24 90 01 04 64 a8 54 29 81 84 24 90 01 04 d8 0c c6 5d 81 ac 24 90 01 04 7c e4 0d 1b 81 84 24 90 01 04 7c 17 b6 7c 81 ac 24 90 01 04 3e 89 76 08 81 84 24 90 01 04 85 05 b4 60 81 ac 24 90 01 04 80 db 1e 60 81 05 90 01 04 85 c5 0a 00 e8 90 00 } //01 00 
		$a_02_1 = {86 5a 88 3a 81 ad 90 01 04 4c ab 80 7e 81 ad 90 01 04 53 27 aa 0d 81 85 90 01 04 72 9d 8b 2b 81 ad 90 01 04 e6 c7 05 56 81 85 90 01 04 9c 98 05 02 81 ad 90 01 04 64 a8 54 29 81 85 90 01 04 d8 0c c6 5d 81 ad 90 01 04 7c e4 0d 1b 81 85 90 01 04 7c 17 b6 7c 81 ad 90 01 04 3e 89 76 08 81 85 90 01 04 85 05 b4 60 81 ad 90 01 04 80 db 1e 60 81 05 90 01 04 85 c5 0a 00 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}