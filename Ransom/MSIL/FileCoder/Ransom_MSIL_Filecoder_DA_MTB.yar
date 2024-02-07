
rule Ransom_MSIL_Filecoder_DA_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_81_0 = {63 75 74 65 52 61 6e 73 6f 6d 77 61 72 65 } //01 00  cuteRansomware
		$a_81_1 = {73 65 63 72 65 74 2e 74 78 74 } //01 00  secret.txt
		$a_81_2 = {52 61 6e 73 6f 6d 77 61 72 65 2e 70 64 62 } //00 00  Ransomware.pdb
	condition:
		any of ($a_*)
 
}
rule Ransom_MSIL_Filecoder_DA_MTB_2{
	meta:
		description = "Ransom:MSIL/Filecoder.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {52 41 4e 53 4f 4d 5f 46 49 4c 45 4e 41 4d 45 } //01 00  RANSOM_FILENAME
		$a_81_1 = {52 41 4e 53 4f 4d 5f 4e 4f 54 45 } //01 00  RANSOM_NOTE
		$a_81_2 = {46 75 63 6b 5f 59 6f 75 } //01 00  Fuck_You
		$a_81_3 = {52 61 6e 73 6f 6d 77 61 72 65 20 54 65 73 74 } //00 00  Ransomware Test
	condition:
		any of ($a_*)
 
}
rule Ransom_MSIL_Filecoder_DA_MTB_3{
	meta:
		description = "Ransom:MSIL/Filecoder.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {52 61 6e 73 6f 6d 77 61 72 65 32 2e 30 } //01 00  Ransomware2.0
		$a_81_1 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //01 00  DisableTaskMgr
		$a_81_2 = {53 43 5f 52 61 6e 73 6f 6d } //01 00  SC_Ransom
		$a_81_3 = {52 61 6e 73 6f 6d 77 61 72 65 32 2e 5f 30 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //00 00  Ransomware2._0.Properties.Resources
	condition:
		any of ($a_*)
 
}
rule Ransom_MSIL_Filecoder_DA_MTB_4{
	meta:
		description = "Ransom:MSIL/Filecoder.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {4e 6f 77 20 70 61 79 20 6d 65 20 74 68 65 20 72 61 6e 73 6f 6d 77 61 72 65 2e 20 42 54 43 20 41 64 64 72 65 73 73 3a } //01 00  Now pay me the ransomware. BTC Address:
		$a_81_1 = {59 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 62 65 69 6e 67 20 65 6e 63 72 79 70 74 65 64 } //01 00  Your files are being encrypted
		$a_81_2 = {41 6c 6c 20 6f 66 20 79 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //01 00  All of your files have been encrypted
		$a_81_3 = {54 6f 20 64 65 63 72 79 70 74 20 79 6f 75 72 20 66 69 6c 65 73 20 70 6c 65 61 73 65 20 65 6e 74 65 72 20 74 68 65 20 70 61 73 73 77 6f 72 64 } //00 00  To decrypt your files please enter the password
	condition:
		any of ($a_*)
 
}
rule Ransom_MSIL_Filecoder_DA_MTB_5{
	meta:
		description = "Ransom:MSIL/Filecoder.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {43 6f 72 6f 6e 61 2e 70 64 62 } //01 00  Corona.pdb
		$a_81_1 = {59 6f 75 72 20 70 65 72 73 6f 6e 61 6c 20 66 69 6c 65 73 20 61 72 65 20 62 65 69 6e 67 20 64 65 6c 65 74 65 64 2e 20 59 6f 75 72 20 70 68 6f 74 6f 73 2c 20 76 69 64 65 6f 73 2c 20 64 6f 63 75 6d 65 6e 74 73 2c 20 65 74 63 2e 2e 2e } //01 00  Your personal files are being deleted. Your photos, videos, documents, etc...
		$a_81_2 = {45 76 65 72 79 20 68 6f 75 72 20 49 20 73 65 6c 65 63 74 20 73 6f 6d 65 20 6f 66 20 74 68 65 6d 20 74 6f 20 64 65 6c 65 74 65 20 70 65 72 6d 61 6e 65 6e 74 6c 79 } //01 00  Every hour I select some of them to delete permanently
		$a_81_3 = {79 6f 75 20 77 69 6c 6c 20 67 65 74 20 31 30 30 30 20 66 69 6c 65 73 20 64 65 6c 65 74 65 64 20 61 73 20 61 20 70 75 6e 69 73 68 6d 65 6e 74 } //00 00  you will get 1000 files deleted as a punishment
	condition:
		any of ($a_*)
 
}
rule Ransom_MSIL_Filecoder_DA_MTB_6{
	meta:
		description = "Ransom:MSIL/Filecoder.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {43 6f 73 74 20 74 6f 20 44 65 63 72 79 70 74 } //01 00  Cost to Decrypt
		$a_81_1 = {45 6e 63 72 79 70 74 69 6f 6e 20 43 6f 6d 70 6c 65 74 65 } //01 00  Encryption Complete
		$a_81_2 = {59 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 62 65 69 6e 67 20 65 6e 63 72 79 70 74 65 64 } //01 00  Your files are being encrypted
		$a_81_3 = {50 6c 65 61 73 65 20 70 61 79 20 66 6f 72 20 64 65 63 72 79 70 74 69 6f 6e 20 70 61 73 73 77 6f 72 64 } //01 00  Please pay for decryption password
		$a_81_4 = {44 6f 20 6e 6f 74 20 63 6c 6f 73 65 20 6f 72 20 79 6f 75 20 77 69 6c 6c 20 6c 6f 73 65 20 79 6f 75 72 20 64 61 74 61 } //01 00  Do not close or you will lose your data
		$a_81_5 = {49 66 20 79 6f 75 20 65 78 69 74 20 74 68 69 73 20 70 72 6f 67 72 61 6d 20 74 68 65 20 65 6e 63 72 79 70 74 69 6f 6e 20 6b 65 79 20 77 69 6c 6c 20 62 65 20 64 65 73 74 72 6f 79 65 64 } //01 00  If you exit this program the encryption key will be destroyed
		$a_81_6 = {79 6f 75 20 77 69 6c 6c 20 6c 6f 73 65 20 61 6c 6c 20 6f 66 20 79 6f 75 72 20 64 61 74 61 20 61 6e 64 20 74 68 65 20 65 6e 63 72 79 70 74 69 6f 6e 20 6b 65 79 20 77 69 6c 6c 20 62 65 20 64 65 73 74 72 6f 79 65 64 } //00 00  you will lose all of your data and the encryption key will be destroyed
	condition:
		any of ($a_*)
 
}