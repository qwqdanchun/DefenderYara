
rule TrojanDropper_Win64_Rotbrow_H{
	meta:
		description = "TrojanDropper:Win64/Rotbrow.H,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_03_0 = {24 0f 04 41 88 42 ff 83 f9 40 72 e8 c6 02 00 ff 15 ?? ?? ?? ?? 0f b6 c8 44 8b d8 80 e1 0f 80 c1 41 88 4b 46 8b c8 c1 e9 04 80 e1 0f 80 c1 41 88 4b 47 } //5
		$a_01_1 = {62 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 6f 00 72 00 46 00 6f 00 72 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 00 00 } //1
		$a_01_2 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 5f 00 62 00 68 00 6f 00 2e 00 64 00 6c 00 6c 00 00 00 } //1
		$a_01_3 = {62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 00 00 } //1
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=7
 
}