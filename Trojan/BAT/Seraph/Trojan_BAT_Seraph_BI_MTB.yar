
rule Trojan_BAT_Seraph_BI_MTB{
	meta:
		description = "Trojan:BAT/Seraph.BI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {58 00 68 00 6f 00 6f 00 72 00 78 00 6d 00 6f 00 76 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00  Xhoorxmov.Properties.Resources
		$a_01_1 = {4e 00 7a 00 73 00 6d 00 61 00 64 00 62 00 77 00 6f 00 75 00 66 00 71 00 71 00 69 00 6f 00 66 00 67 00 76 00 71 00 76 00 74 00 70 00 6a 00 } //01 00  Nzsmadbwoufqqiofgvqvtpj
		$a_81_2 = {54 56 71 51 41 41 4d 41 41 41 41 45 41 41 41 41 } //01 00  TVqQAAMAAAAEAAAA
		$a_01_3 = {77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  wershell
		$a_81_4 = {46 61 63 61 64 65 45 78 63 65 70 74 69 6f 6e 43 61 6e 64 69 64 61 74 65 } //01 00  FacadeExceptionCandidate
		$a_81_5 = {70 6d 2e 43 61 6e 64 69 64 61 74 65 73 } //01 00  pm.Candidates
		$a_01_6 = {54 00 65 00 73 00 74 00 2d 00 4e 00 65 00 74 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 20 00 2d 00 54 00 72 00 61 00 63 00 65 00 52 00 6f 00 75 00 74 00 65 00 20 00 79 00 6f 00 75 00 74 00 75 00 62 00 65 00 2e 00 63 00 6f 00 6d 00 } //01 00  Test-NetConnection -TraceRoute youtube.com
		$a_01_7 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}