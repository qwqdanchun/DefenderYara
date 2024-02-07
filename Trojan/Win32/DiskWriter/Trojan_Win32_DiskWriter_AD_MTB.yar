
rule Trojan_Win32_DiskWriter_AD_MTB{
	meta:
		description = "Trojan:Win32/DiskWriter.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {76 69 72 75 73 40 73 61 74 69 6e 66 6f 2e 65 73 } //01 00  virus@satinfo.es
		$a_01_1 = {4b 65 79 6c 6f 67 67 65 72 2e 42 6c 61 64 61 62 69 6e 64 69 } //01 00  Keylogger.Bladabindi
		$a_01_2 = {4d 61 6c 77 61 72 65 2e 50 6f 73 74 61 6c } //01 00  Malware.Postal
		$a_01_3 = {52 61 6e 73 6f 6d 2e 53 65 72 76 63 63 } //01 00  Ransom.Servcc
		$a_01_4 = {54 72 6f 6a 61 6e 2e 44 69 73 74 54 72 61 63 6b } //01 00  Trojan.DistTrack
		$a_01_5 = {4d 61 6c 77 61 72 65 2e 5a 61 6d 62 72 61 6e 6f } //01 00  Malware.Zambrano
		$a_01_6 = {48 41 43 4b 20 42 59 20 44 45 42 55 47 47 45 52 20 21 21 21 } //00 00  HACK BY DEBUGGER !!!
	condition:
		any of ($a_*)
 
}