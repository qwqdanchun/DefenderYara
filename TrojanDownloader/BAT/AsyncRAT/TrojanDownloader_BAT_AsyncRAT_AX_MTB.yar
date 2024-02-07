
rule TrojanDownloader_BAT_AsyncRAT_AX_MTB{
	meta:
		description = "TrojanDownloader:BAT/AsyncRAT.AX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //02 00  powershell
		$a_01_1 = {2d 00 45 00 6e 00 63 00 6f 00 64 00 65 00 64 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //02 00  -EncodedCommand
		$a_01_2 = {42 00 54 00 41 00 48 00 51 00 41 00 59 00 51 00 42 00 79 00 41 00 48 00 51 00 41 00 4c 00 51 00 42 00 54 00 41 00 47 00 77 00 41 00 5a 00 51 00 42 00 6c 00 41 00 48 00 41 00 41 00 49 00 41 00 41 00 74 00 41 00 46 00 4d 00 41 00 5a 00 51 00 42 00 6a 00 41 00 47 00 38 00 41 00 62 00 67 00 42 00 6b 00 41 00 48 00 4d 00 } //02 00  BTAHQAYQByAHQALQBTAGwAZQBlAHAAIAAtAFMAZQBjAG8AbgBkAHM
		$a_01_3 = {45 00 34 00 41 00 5a 00 51 00 42 00 33 00 41 00 43 00 30 00 41 00 54 00 77 00 42 00 69 00 41 00 47 00 6f 00 41 00 5a 00 51 00 42 00 6a 00 41 00 48 00 51 00 41 00 49 00 41 00 42 00 54 00 41 00 48 00 6b 00 41 00 63 00 77 00 42 00 30 00 41 00 47 00 55 00 41 00 62 00 51 00 41 00 75 00 41 00 45 00 34 00 41 00 5a 00 51 00 42 00 30 00 41 00 43 00 34 00 41 00 56 00 77 00 42 00 6c 00 41 00 47 00 49 00 41 00 51 00 77 00 42 00 73 00 41 00 47 00 6b 00 41 00 5a 00 51 00 42 00 75 00 41 00 48 00 51 00 41 00 4b 00 51 00 41 00 75 00 41 00 45 00 51 00 41 00 62 00 77 00 42 00 33 00 41 00 47 00 34 00 41 00 62 00 41 00 42 00 76 00 41 00 47 00 45 00 41 00 5a 00 41 00 42 00 47 00 41 00 47 00 6b 00 41 00 62 00 41 00 42 00 6c 00 41 00 } //02 00  E4AZQB3AC0ATwBiAGoAZQBjAHQAIABTAHkAcwB0AGUAbQAuAE4AZQB0AC4AVwBlAGIAQwBsAGkAZQBuAHQAKQAuAEQAbwB3AG4AbABvAGEAZABGAGkAbABlA
		$a_01_4 = {4b 00 41 00 42 00 4b 00 41 00 47 00 38 00 41 00 61 00 51 00 42 00 75 00 41 00 43 00 30 00 41 00 55 00 41 00 42 00 68 00 41 00 48 00 51 00 41 00 61 00 41 00 } //02 00  KABKAG8AaQBuAC0AUABhAHQAaA
		$a_01_5 = {41 00 74 00 41 00 46 00 41 00 41 00 59 00 51 00 42 00 30 00 41 00 47 00 67 00 41 00 49 00 41 00 41 00 6b 00 41 00 47 00 55 00 41 00 62 00 67 00 42 00 32 00 41 00 44 00 6f 00 41 00 51 00 51 00 42 00 77 00 41 00 48 00 41 00 41 00 52 00 41 00 42 00 68 00 41 00 48 00 51 00 41 00 59 00 51 00 } //02 00  AtAFAAYQB0AGgAIAAkAGUAbgB2ADoAQQBwAHAARABhAHQAYQ
		$a_01_6 = {55 00 77 00 42 00 30 00 41 00 47 00 45 00 41 00 63 00 67 00 42 00 30 00 41 00 43 00 30 00 41 00 55 00 41 00 42 00 79 00 41 00 47 00 38 00 41 00 59 00 77 00 42 00 6c 00 41 00 48 00 4d 00 41 00 63 00 77 00 41 00 67 00 41 00 43 00 30 00 41 00 52 00 67 00 42 00 70 00 41 00 47 00 77 00 41 00 5a 00 51 00 42 00 51 00 41 00 47 00 45 00 41 00 64 00 41 00 42 00 6f 00 41 00 } //02 00  UwB0AGEAcgB0AC0AUAByAG8AYwBlAHMAcwAgAC0ARgBpAGwAZQBQAGEAdABoA
		$a_01_7 = {41 00 74 00 41 00 45 00 4d 00 41 00 61 00 41 00 42 00 70 00 41 00 47 00 77 00 41 00 5a 00 41 00 42 00 51 00 41 00 47 00 45 00 41 00 64 00 41 00 42 00 6f 00 41 00 } //00 00  AtAEMAaABpAGwAZABQAGEAdABoA
	condition:
		any of ($a_*)
 
}