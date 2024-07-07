
rule Trojan_Win64_Shelm_RW_MTB{
	meta:
		description = "Trojan:Win64/Shelm.RW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {55 00 58 00 4e 00 2b 00 62 00 58 00 42 00 77 00 5a 00 54 00 4d 00 35 00 4d 00 6a 00 51 00 6b 00 4c 00 46 00 74 00 74 00 63 00 6d 00 68 00 7a 00 65 00 33 00 63 00 6b 00 55 00 6c 00 67 00 6b 00 4e 00 54 00 51 00 79 00 4e 00 44 00 38 00 6b 00 57 00 32 00 31 00 79 00 4f 00 6a 00 67 00 2f 00 4a 00 48 00 77 00 36 00 4f 00 43 00 30 00 6b 00 52 00 58 00 52 00 30 00 63 00 47 00 6c 00 62 00 61 00 57 00 5a 00 50 00 62 00 58 00 67 00 7a 00 4f 00 54 00 63 00 37 00 4d 00 6a 00 63 00 36 00 4a 00 43 00 78 00 50 00 54 00 46 00 68 00 52 00 55 00 44 00 41 00 6b 00 } //1 UXN+bXBwZTM5MjQkLFttcmhze3ckUlgkNTQyND8kW21yOjg/JHw6OC0kRXR0cGlbaWZPbXgzOTc7Mjc6JCxPTFhRUDAk
		$a_01_1 = {63 00 47 00 31 00 76 00 61 00 53 00 52 00 4c 00 61 00 57 00 64 00 76 00 63 00 79 00 30 00 6b 00 52 00 32 00 78 00 32 00 63 00 33 00 46 00 70 00 4d 00 7a 00 55 00 31 00 4e 00 44 00 49 00 30 00 4d 00 6a 00 51 00 79 00 4e 00 43 00 52 00 58 00 5a 00 57 00 70 00 6c 00 64 00 6d 00 30 00 7a 00 4f 00 54 00 63 00 37 00 4d 00 6a 00 63 00 36 00 4d 00 33 00 78 00 70 00 65 00 6d 00 31 00 77 00 } //1 cG1vaSRLaWdvcy0kR2x2c3FpMzU1NDI0MjQyNCRXZWpldm0zOTc7Mjc6M3xpem1w
		$a_01_2 = {41 00 64 00 64 00 2d 00 4d 00 70 00 50 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 20 00 2d 00 45 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 50 00 61 00 74 00 68 00 20 00 43 00 3a 00 } //1 Add-MpPreference -ExclusionPath C:
		$a_01_3 = {52 00 33 00 52 00 30 00 63 00 58 00 51 00 38 00 56 00 58 00 46 00 76 00 5a 00 33 00 5a 00 71 00 61 00 33 00 42 00 70 00 49 00 6e 00 6c 00 6e 00 63 00 48 00 59 00 69 00 65 00 58 00 52 00 78 00 63 00 47 00 6b 00 6a 00 } //1 R3R0cXQ8VXFvZ3Zqa3BpInlncHYieXRxcGkj
		$a_01_4 = {57 00 47 00 78 00 70 00 4a 00 47 00 6c 00 79 00 65 00 47 00 6c 00 32 00 61 00 57 00 67 00 6b 00 61 00 47 00 56 00 34 00 5a 00 53 00 52 00 74 00 64 00 79 00 52 00 74 00 63 00 6d 00 64 00 7a 00 64 00 6e 00 5a 00 70 00 5a 00 33 00 67 00 6c 00 } //1 WGxpJGlyeGl2aWgkaGV4ZSRtdyRtcmdzdnZpZ3gl
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}