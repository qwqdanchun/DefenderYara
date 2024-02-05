
rule Trojan_Win64_IcedId_SIBE_MTB{
	meta:
		description = "Trojan:Win64/IcedId.SIBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {48 8b 0a 48 01 0e 48 8b 0e 8b 09 41 89 09 41 8b 09 41 8b 3a 44 31 f7 39 f9 90 18 48 89 45 90 01 01 4c 89 6d 90 01 01 4c 89 5d 90 01 01 65 48 8b 0c 25 60 00 00 00 48 8b 49 18 48 8b 41 90 01 01 48 85 c0 0f 84 90 01 04 8b 0d 90 01 04 8d 51 90 01 01 0f af d1 f6 c2 90 01 01 0f 94 c1 83 3d 90 01 05 0f 9c c2 08 ca 88 55 90 01 01 41 bd 90 01 04 48 8b 58 50 48 89 45 90 01 01 0f b7 70 48 31 d2 41 8a 0c 24 c1 c2 90 01 01 41 8a 0c 24 8a 0b 41 8a 04 24 41 88 0c 24 41 8a 04 24 41 0f b6 04 24 48 8d 3c 10 80 f9 90 01 01 48 8d 54 10 90 01 01 48 0f 46 d7 41 8a 04 24 48 ff c3 66 ff ce 75 90 01 01 41 8b 07 44 31 e8 39 d0 0f 85 90 00 } //01 00 
		$a_02_1 = {4c 8b 58 20 49 63 43 3c 41 8b 84 03 88 00 00 00 42 8b 54 18 20 42 8b 74 18 24 4c 01 da 4c 01 de 66 41 be 90 01 02 8b 0a 4c 01 d9 48 ff c1 8a 59 90 01 01 45 31 d2 44 89 d7 c1 c7 90 01 01 44 0f be d3 41 01 fa 8a 19 48 ff c1 84 db 75 90 01 01 41 8b 08 44 31 e9 41 39 ca 74 90 01 01 48 8b 4d 90 01 01 8b 09 44 31 e9 41 39 ca 74 90 01 01 48 8b 4d 90 01 01 8b 09 44 31 e9 41 39 ca 74 90 01 01 48 8b 4d 90 01 01 8b 09 44 31 e9 41 39 ca 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}