
rule Trojan_Win64_Spyboy_AB_MTB{
	meta:
		description = "Trojan:Win64/Spyboy.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,67 00 67 00 06 00 00 64 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //01 00 
		$a_01_1 = {57 6d 56 74 59 57 35 68 49 45 78 30 5a 43 34 78 46 44 41 53 42 67 4e 56 42 41 4d 54 43 31 70 6c 62 57 46 75 59 53 42 4d 64 47 51 75 4d 49 49 42 49 6a 41 4e 42 67 6b 71 68 6b 69 47 39 77 30 42 41 51 45 46 41 41 4f 43 41 51 38 41 4d 49 49 42 43 67 4b 43 41 51 45 41 73 4d 67 30 } //01 00  WmVtYW5hIEx0ZC4xFDASBgNVBAMTC1plbWFuYSBMdGQuMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsMg0
		$a_01_2 = {36 42 56 4a 30 62 45 6c 75 61 58 52 56 62 6d 6c 6a 62 32 52 6c 55 33 52 79 61 57 35 6e 41 41 42 52 42 56 4a 30 62 45 4e 76 63 48 6c 56 62 6d 6c 6a 62 32 52 6c 55 33 52 79 61 57 35 6e 41 41 41 2f } //01 00  6BVJ0bEluaXRVbmljb2RlU3RyaW5nAABRBVJ0bENvcHlVbmljb2RlU3RyaW5nAAA/
		$a_01_3 = {41 53 41 43 49 41 4d 67 42 43 41 46 49 41 59 67 42 79 41 49 49 41 6b 67 43 69 41 4c 49 41 77 67 44 53 41 4f 49 41 43 42 44 79 41 51 49 42 45 67 45 69 41 54 49 42 51 67 46 53 41 57 49 42 63 67 } //02 00  ASACIAMgBCAFIAYgByAIIAkgCiALIAwgDSAOIACBDyAQIBEgEiATIBQgFSAWIBcg
		$a_03_4 = {1f 00 e8 69 31 00 00 8b d8 85 90 01 03 8b 0e 48 8d 05 22 90 01 05 0d 3b 00 01 00 89 4c 24 30 48 89 44 24 28 48 90 01 04 00 00 b9 07 00 00 00 90 01 0a 13 93 ff ff eb 06 8b 44 24 50 89 07 48 8b 74 24 60 8b c3 48 8b 5c 90 00 } //02 00 
		$a_01_5 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 5a 00 65 00 6d 00 61 00 6e 00 61 00 41 00 6e 00 74 00 69 00 4d 00 61 00 6c 00 77 00 61 00 72 00 65 00 } //00 00  \DosDevices\ZemanaAntiMalware
	condition:
		any of ($a_*)
 
}