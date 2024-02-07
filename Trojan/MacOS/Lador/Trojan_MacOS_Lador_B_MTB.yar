
rule Trojan_MacOS_Lador_B_MTB{
	meta:
		description = "Trojan:MacOS/Lador.B!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_00_0 = {48 83 ec 28 48 89 6c 24 20 48 8d 6c 24 20 65 48 8b 04 25 30 00 00 00 48 8b 40 30 83 b8 0c 01 00 00 00 0f 8f a3 00 00 00 80 3d 96 a0 64 00 00 0f 84 8c 00 00 00 48 8b 44 24 30 48 85 c0 75 31 0f 57 c0 0f 11 44 24 10 48 8d 0d 52 d1 02 00 48 89 4c 24 10 48 89 44 24 18 48 8d 44 24 10 48 89 04 24 e8 4a e9 02 00 48 8b 6c 24 20 48 83 c4 28 c3 48 89 04 24 48 8b 4c 24 38 48 89 4c 24 08 e8 9d b3 fd ff 80 3d 3a a0 64 00 00 74 07 48 8b 44 24 30 } //02 00 
		$a_00_1 = {65 48 8b 0c 25 30 00 00 00 48 3b 61 10 0f 86 61 01 00 00 48 83 ec 30 48 89 6c 24 28 48 8d 6c 24 28 48 83 3d 37 82 63 00 00 0f 84 2a 01 00 00 48 8b 44 24 38 0f 57 c0 f2 48 0f 2a c0 f2 0f 59 05 b4 4a 65 00 f2 0f 11 44 24 20 48 8d 05 07 82 63 00 48 89 04 24 e8 26 ba fe ff f2 0f 10 44 24 20 f2 48 0f 2c c0 } //01 00 
		$a_01_2 = {49 4f 50 6c 61 74 66 6f 72 6d 45 78 70 65 72 74 44 65 76 69 63 65 } //01 00  IOPlatformExpertDevice
		$a_01_3 = {67 69 74 68 75 62 2e 63 6f 6d 2f 64 65 6e 69 73 62 72 6f 64 62 65 63 6b 2f 6d 61 63 68 69 6e 65 69 64 2e 65 78 74 72 61 63 74 49 44 } //00 00  github.com/denisbrodbeck/machineid.extractID
	condition:
		any of ($a_*)
 
}