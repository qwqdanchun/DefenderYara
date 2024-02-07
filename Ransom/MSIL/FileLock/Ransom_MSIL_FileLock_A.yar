
rule Ransom_MSIL_FileLock_A{
	meta:
		description = "Ransom:MSIL/FileLock.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 32 00 6e 00 6f 00 2e 00 63 00 6f 00 2f 00 } //01 00  https://2no.co/
		$a_01_1 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 69 00 6d 00 70 00 6f 00 72 00 74 00 61 00 6e 00 74 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 61 00 72 00 65 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 21 00 } //01 00  All your important files are encrypted!
		$a_01_2 = {46 00 69 00 6c 00 65 00 73 00 4c 00 30 00 63 00 6b 00 65 00 72 00 20 00 52 00 41 00 4e 00 24 00 4f 00 4d 00 57 00 41 00 52 00 45 00 } //01 00  FilesL0cker RAN$OMWARE
		$a_01_3 = {2f 00 63 00 20 00 76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //00 00  /c vssadmin.exe delete shadows /all /quiet
	condition:
		any of ($a_*)
 
}