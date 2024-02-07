
rule Spammer_Win32_Morphisil_A{
	meta:
		description = "Spammer:Win32/Morphisil.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 53 75 63 63 65 73 73 4d 61 69 6c 73 3f 43 61 6d 70 61 69 67 6e 4e 75 6d 3d 25 6c 64 } //01 00  /SuccessMails?CampaignNum=%ld
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 69 6e 67 20 6d 61 69 6c 6c 69 73 74 2e 2e 2e } //01 00  Downloading maillist...
		$a_01_2 = {23 66 72 6f 6d 61 6c 69 61 73 } //01 00  #fromalias
		$a_01_3 = {7b 25 25 52 4e 44 5f 42 41 53 45 36 34 3a 25 6c 64 25 25 7d } //01 00  {%%RND_BASE64:%ld%%}
		$a_01_4 = {53 75 62 6a 65 63 74 3a 20 7b 25 53 55 42 4a 45 43 54 25 7d } //01 00  Subject: {%SUBJECT%}
		$a_01_5 = {7b 25 42 45 47 49 4e 5f 4d 4f 52 50 48 49 4d 41 47 45 25 7d } //00 00  {%BEGIN_MORPHIMAGE%}
		$a_00_6 = {7e 15 00 } //00 08 
	condition:
		any of ($a_*)
 
}