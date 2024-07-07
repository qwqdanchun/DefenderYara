
rule Trojan_BAT_ClipBanker_GFX_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.GFX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_80_0 = {48 34 73 49 41 41 41 41 41 41 41 45 41 43 74 4f 7a 69 68 4a 4c 4d 34 75 31 6b 75 74 53 41 55 41 39 51 73 48 52 77 77 41 41 41 41 3d } //H4sIAAAAAAAEACtOzihJLM4u1kutSAUA9QsHRwwAAAA=  1
		$a_80_1 = {48 34 73 49 41 41 41 41 41 41 41 45 41 50 50 77 73 4d 72 4e 42 51 41 4f 2f 4b 30 36 42 51 41 41 41 41 3d 3d } //H4sIAAAAAAAEAPPwsMrNBQAO/K06BQAAAA==  1
		$a_01_2 = {48 00 34 00 73 00 49 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 45 00 41 00 4e 00 4e 00 4c 00 53 00 69 00 77 00 42 00 41 00 4a 00 7a 00 33 00 64 00 41 00 45 00 45 00 41 00 41 00 41 00 41 00 } //1 H4sIAAAAAAAEANNLSiwBAJz3dAEEAAAA
		$a_80_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //Software\Microsoft\Windows\CurrentVersion\Run  1
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_01_2  & 1)*1+(#a_80_3  & 1)*1) >=4
 
}