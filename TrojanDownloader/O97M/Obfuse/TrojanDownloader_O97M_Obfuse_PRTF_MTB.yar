
rule TrojanDownloader_O97M_Obfuse_PRTF_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PRTF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 51 42 46 41 46 67 41 49 41 41 67 41 43 67 41 54 67 42 6c 41 48 63 41 4c 51 42 50 41 47 49 41 61 67 42 6c 41 47 4d 41 64 41 41 67 41 45 34 41 5a 51 42 30 41 43 34 41 56 77 42 6c 41 47 49 41 51 77 42 73 41 47 6b 41 5a 51 42 75 41 48 51 41 4b 51 41 75 41 45 51 41 62 77 42 33 41 47 34 41 62 41 42 76 41 47 45 41 5a 41 42 54 41 48 51 41 63 67 42 70 41 47 34 41 5a 77 41 75 41 45 6b 41 62 67 42 32 41 47 38 41 61 77 42 6c 41 43 67 } //01 00  SQBFAFgAIAAgACgATgBlAHcALQBPAGIAagBlAGMAdAAgAE4AZQB0AC4AVwBlAGIAQwBsAGkAZQBuAHQAKQAuAEQAbwB3AG4AbABvAGEAZABTAHQAcgBpAG4AZwAuAEkAbgB2AG8AawBlACg
		$a_01_1 = {41 4a 77 41 4e 41 41 6f 41 61 41 42 30 41 48 51 41 63 41 42 7a 41 44 6f 41 4c 77 41 76 41 47 51 41 59 77 41 31 41 44 4d 41 4e 77 41 75 41 44 51 41 63 77 42 35 41 47 34 41 59 77 41 75 41 47 4d 41 62 77 42 74 41 43 38 41 5a 41 42 76 41 48 63 41 62 67 42 73 41 47 38 41 59 51 42 6b 41 43 38 41 51 67 41 35 41 45 63 41 55 41 42 78 41 46 59 41 55 67 41 79 41 43 38 41 62 51 42 68 41 48 4d 41 64 41 42 6c 41 48 49 41 4c 67 42 71 41 48 41 41 5a 77 41 } //00 00  AJwANAAoAaAB0AHQAcABzADoALwAvAGQAYwA1ADMANwAuADQAcwB5AG4AYwAuAGMAbwBtAC8AZABvAHcAbgBsAG8AYQBkAC8AQgA5AEcAUABxAFYAUgAyAC8AbQBhAHMAdABlAHIALgBqAHAAZwA
	condition:
		any of ($a_*)
 
}