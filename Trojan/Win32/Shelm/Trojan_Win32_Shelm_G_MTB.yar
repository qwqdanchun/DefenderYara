
rule Trojan_Win32_Shelm_G_MTB{
	meta:
		description = "Trojan:Win32/Shelm.G!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0b 00 00 02 00 "
		
	strings :
		$a_01_0 = {2d 6e 6f 70 20 2d 77 20 68 69 64 64 65 6e 20 2d 65 } //02 00  -nop -w hidden -e
		$a_01_1 = {41 43 51 41 5a 51 42 75 41 48 59 41 4f 67 42 33 41 47 6b 41 62 67 42 6b 41 47 6b 41 63 67 41 72 41 43 63 41 58 41 42 7a 41 48 6b 41 63 77 42 33 41 47 38 41 64 77 41 32 41 44 51 41 58 41 42 58 41 47 6b 41 62 67 42 6b 41 47 38 41 64 77 42 7a } //02 00  ACQAZQBuAHYAOgB3AGkAbgBkAGkAcgArACcAXABzAHkAcwB3AG8AdwA2ADQAXABXAGkAbgBkAG8AdwBz
		$a_01_2 = {41 46 41 41 62 77 42 33 41 47 55 41 63 67 42 54 41 47 67 41 5a 51 42 73 41 47 77 41 58 41 42 32 41 44 45 41 4c 67 41 77 41 46 77 41 63 41 42 76 41 48 63 41 5a 51 42 79 41 48 4d 41 61 41 42 6c 41 47 77 41 62 41 41 75 41 47 55 41 65 41 42 6c 41 43 } //02 00  AFAAbwB3AGUAcgBTAGgAZQBsAGwAXAB2ADEALgAwAFwAcABvAHcAZQByAHMAaABlAGwAbAAuAGUAeABlAC
		$a_01_3 = {41 45 34 41 5a 51 42 33 41 43 30 41 54 77 42 69 41 47 6f 41 5a 51 42 6a 41 48 51 41 49 41 42 54 41 48 6b 41 63 77 42 30 41 47 55 41 62 51 41 75 41 45 51 41 61 51 42 68 41 47 63 41 62 67 42 76 } //02 00  AE4AZQB3AC0ATwBiAGoAZQBjAHQAIABTAHkAcwB0AGUAbQAuAEQAaQBhAGcAbgBv
		$a_01_4 = {41 48 4d 41 64 41 42 70 41 47 4d 41 63 77 41 75 41 46 41 41 63 67 42 76 41 47 4d 41 5a 51 42 7a 41 48 4d 41 55 77 42 30 41 47 45 41 63 67 42 30 41 45 6b 41 62 67 42 6d 41 47 38 41 } //02 00  AHMAdABpAGMAcwAuAFAAcgBvAGMAZQBzAHMAUwB0AGEAcgB0AEkAbgBmAG8A
		$a_01_5 = {41 42 62 41 46 4d 41 65 51 42 7a 41 48 51 41 5a 51 42 74 41 43 34 41 51 77 42 76 41 47 34 41 64 67 42 6c 41 48 49 41 64 41 42 64 41 44 6f 41 4f 67 42 47 41 48 49 41 62 77 42 74 41 45 49 41 59 51 42 7a 41 47 55 41 4e 67 41 30 41 46 4d 41 64 41 42 79 41 47 6b 41 62 67 42 6e 41 43 } //02 00  ABbAFMAeQBzAHQAZQBtAC4AQwBvAG4AdgBlAHIAdABdADoAOgBGAHIAbwBtAEIAYQBzAGUANgA0AFMAdAByAGkAbgBnAC
		$a_01_6 = {67 41 6f 41 46 73 41 63 77 42 6a 41 48 49 41 61 51 42 77 41 48 51 41 59 67 42 73 41 47 38 41 59 77 42 72 41 46 30 41 4f 67 41 36 41 47 4d 41 63 67 42 6c 41 47 45 41 64 41 42 6c 41 43 67 41 4b 41 42 4f 41 47 55 41 64 77 41 74 41 45 38 41 59 67 } //02 00  gAoAFsAcwBjAHIAaQBwAHQAYgBsAG8AYwBrAF0AOgA6AGMAcgBlAGEAdABlACgAKABOAGUAdwAtAE8AYg
		$a_01_7 = {42 71 41 47 55 41 59 77 42 30 41 43 41 41 55 77 42 35 41 48 4d 41 64 41 42 6c 41 47 30 41 4c 67 42 4a 41 45 38 41 4c 67 42 54 41 48 51 41 63 67 42 6c 41 47 45 41 62 51 42 53 41 47 55 41 59 51 42 6b 41 47 55 41 63 67 41 6f 41 45 34 41 5a 51 42 33 } //02 00  BqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBJAE8ALgBTAHQAcgBlAGEAbQBSAGUAYQBkAGUAcgAoAE4AZQB3
		$a_01_8 = {41 43 30 41 54 77 42 69 41 47 6f 41 5a 51 42 6a 41 48 51 41 49 41 42 54 41 48 6b 41 63 77 42 30 41 47 55 41 62 51 41 75 41 45 6b 41 54 77 41 75 41 45 4d 41 62 77 42 74 41 48 41 41 63 67 42 6c 41 48 4d 41 63 77 42 70 41 47 38 41 62 67 41 75 41 45 63 } //02 00  AC0ATwBiAGoAZQBjAHQAIABTAHkAcwB0AGUAbQAuAEkATwAuAEMAbwBtAHAAcgBlAHMAcwBpAG8AbgAuAEc
		$a_01_9 = {41 65 67 42 70 41 48 41 41 55 77 42 30 41 48 49 41 5a 51 42 68 41 47 30 41 4b 41 41 6f 41 45 34 41 5a 51 42 33 41 43 30 41 54 77 42 69 41 47 6f 41 5a 51 42 6a 41 48 51 41 49 41 42 54 41 48 6b 41 63 77 42 30 41 47 55 41 62 51 41 75 41 45 6b 41 54 77 } //02 00  AegBpAHAAUwB0AHIAZQBhAG0AKAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABTAHkAcwB0AGUAbQAuAEkATw
		$a_01_10 = {41 75 41 45 30 41 5a 51 42 74 41 47 38 41 63 67 42 35 41 46 4d 41 64 41 42 79 41 47 55 41 59 51 42 74 41 43 } //00 00  AuAE0AZQBtAG8AcgB5AFMAdAByAGUAYQBtAC
	condition:
		any of ($a_*)
 
}