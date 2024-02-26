
rule Trojan_BAT_AgentTesla_PREZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PREZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_81_0 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_81_1 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //01 00  GetExportedTypes
		$a_81_2 = {54 6f 53 74 72 69 6e 67 } //01 00  ToString
		$a_81_3 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_81_4 = {54 6f 41 72 72 61 79 } //01 00  ToArray
		$a_81_5 = {24 62 62 64 61 61 35 36 32 2d 38 35 62 39 2d 34 32 39 30 2d 39 33 30 34 2d 39 39 35 34 37 32 38 62 65 65 39 62 } //01 00  $bbdaa562-85b9-4290-9304-9954728bee9b
		$a_81_6 = {3a 2f 2f 67 69 67 61 6e 74 6f 66 65 72 6b 66 74 2e 68 75 2f 42 61 6a 74 6f 6c 71 72 62 2e 64 61 74 } //01 00  ://gigantoferkft.hu/Bajtolqrb.dat
		$a_81_7 = {52 75 6e 46 61 63 74 6f 72 79 } //00 00  RunFactory
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_PREZ_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.PREZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 09 00 00 01 00 "
		
	strings :
		$a_81_0 = {50 75 73 68 53 65 72 76 65 72 } //01 00  PushServer
		$a_81_1 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_2 = {50 75 62 6c 69 73 68 54 65 73 74 73 } //01 00  PublishTests
		$a_81_3 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //01 00  GetExportedTypes
		$a_81_4 = {49 6e 76 6f 6b 65 53 65 72 76 65 72 } //01 00  InvokeServer
		$a_81_5 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_81_6 = {24 33 32 36 34 30 36 33 65 2d 32 63 31 66 2d 34 39 32 66 2d 38 38 38 39 2d 65 37 39 36 63 63 37 32 38 36 35 32 } //01 00  $3264063e-2c1f-492f-8889-e796cc728652
		$a_03_7 = {2f 00 2f 00 38 00 32 00 2e 00 31 00 31 00 38 00 2e 00 32 00 31 00 2e 00 36 00 39 00 2f 00 79 00 69 00 79 00 2f 00 90 02 14 2e 00 77 00 61 00 76 00 90 00 } //01 00 
		$a_03_8 = {2f 2f 38 32 2e 31 31 38 2e 32 31 2e 36 39 2f 79 69 79 2f 90 02 14 2e 77 61 76 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_PREZ_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.PREZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {2b 59 00 20 00 01 00 00 13 90 01 01 11 90 01 01 17 58 13 90 01 01 11 90 01 01 20 00 ba 00 00 5d 13 90 01 01 11 90 01 01 20 00 ba 00 00 5d 13 90 01 02 11 90 01 01 91 13 90 01 02 11 90 01 01 1f 16 5d 91 13 90 01 02 11 90 01 01 91 11 90 01 01 58 13 90 01 01 11 90 01 01 11 90 01 01 61 13 90 01 01 11 90 01 01 11 90 01 01 59 13 90 01 02 11 90 01 01 11 90 01 01 11 90 01 01 5d d2 9c 00 11 90 01 01 17 58 13 90 01 01 11 90 01 01 20 00 ba 00 00 fe 04 13 90 01 01 11 90 01 01 2d 98 90 00 } //01 00 
		$a_81_1 = {35 4a 5a 34 34 4b 38 45 47 35 47 5a 53 54 37 48 45 35 37 51 52 37 } //01 00  5JZ44K8EG5GZST7HE57QR7
		$a_81_2 = {31 36 36 39 30 46 41 41 41 37 32 43 34 39 37 39 46 39 33 39 31 44 37 30 31 38 41 32 44 44 37 33 31 37 39 37 38 32 45 33 41 30 37 37 33 44 38 33 35 30 32 33 30 43 31 43 46 42 39 43 45 32 33 42 } //01 00  16690FAAA72C4979F9391D7018A2DD73179782E3A0773D8350230C1CFB9CE23B
		$a_81_3 = {54 6f 53 74 72 69 6e 67 } //01 00  ToString
		$a_81_4 = {49 6e 69 74 69 61 6c 69 7a 65 43 6f 6d 70 6f 6e 65 6e 74 } //01 00  InitializeComponent
		$a_81_5 = {53 75 73 70 65 6e 64 4c 61 79 6f 75 74 } //01 00  SuspendLayout
		$a_81_6 = {52 65 73 75 6d 65 4c 61 79 6f 75 74 } //01 00  ResumeLayout
		$a_81_7 = {49 6e 69 74 69 61 6c 69 7a 65 41 72 72 61 79 } //00 00  InitializeArray
	condition:
		any of ($a_*)
 
}