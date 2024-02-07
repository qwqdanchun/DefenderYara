
rule Ransom_MSIL_HiddenTear_B{
	meta:
		description = "Ransom:MSIL/HiddenTear.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 72 00 70 00 62 00 78 00 5c 00 64 00 72 00 70 00 62 00 78 00 2e 00 65 00 78 00 65 00 } //01 00  Drpbx\drpbx.exe
		$a_01_1 = {46 00 72 00 66 00 78 00 5c 00 66 00 69 00 72 00 65 00 66 00 6f 00 78 00 2e 00 65 00 78 00 65 00 } //01 00  Frfx\firefox.exe
		$a_01_2 = {5c 00 44 00 65 00 6c 00 65 00 74 00 65 00 49 00 74 00 73 00 65 00 6c 00 66 00 2e 00 62 00 61 00 74 00 } //01 00  \DeleteItself.bat
		$a_01_3 = {45 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 46 00 69 00 6c 00 65 00 4c 00 69 00 73 00 74 00 2e 00 74 00 78 00 74 00 } //01 00  EncryptedFileList.txt
		$a_01_4 = {72 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 2e 00 76 00 69 00 63 00 74 00 69 00 6d 00 73 00 2e 00 69 00 74 00 6d 00 2e 00 74 00 78 00 74 00 } //01 00  ransomware.victims.itm.txt
		$a_01_5 = {4c 6f 63 6b 65 72 2e 70 64 62 } //00 00  Locker.pdb
	condition:
		any of ($a_*)
 
}