
rule Ransom_MSIL_Genasom_R{
	meta:
		description = "Ransom:MSIL/Genasom.R,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {66 75 63 6b 44 69 72 65 63 74 6f 72 79 } //1 fuckDirectory
		$a_01_1 = {5c 00 40 00 52 00 45 00 41 00 44 00 5f 00 49 00 54 00 40 00 2e 00 74 00 78 00 74 00 } //1 \@READ_IT@.txt
		$a_01_2 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 77 00 65 00 72 00 65 00 20 00 66 00 75 00 63 00 6b 00 65 00 64 00 20 00 66 00 6f 00 72 00 65 00 76 00 65 00 72 00 20 00 62 00 79 00 20 00 46 00 69 00 6c 00 65 00 46 00 75 00 63 00 6b 00 21 00 20 00 59 00 6f 00 75 00 20 00 63 00 61 00 6e 00 20 00 6e 00 6f 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 75 00 73 00 2c 00 20 00 79 00 6f 00 75 00 20 00 69 00 64 00 69 00 6f 00 74 00 } //1 All your files were fucked forever by FileFuck! You can not stop us, you idiot
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Ransom_MSIL_Genasom_R_2{
	meta:
		description = "Ransom:MSIL/Genasom.R,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {72 61 6e 73 6f 6d 77 61 72 65 5f 73 61 6d 70 6c 65 } //1 ransomware_sample
		$a_01_1 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 62 00 65 00 6c 00 6f 00 6e 00 67 00 20 00 74 00 6f 00 20 00 6d 00 65 00 21 00 20 00 50 00 61 00 79 00 20 00 74 00 68 00 65 00 20 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 20 00 69 00 66 00 20 00 79 00 6f 00 75 00 20 00 77 00 61 00 6e 00 74 00 20 00 74 00 68 00 65 00 6d 00 20 00 62 00 61 00 63 00 6b 00 2e 00 5b 00 48 00 50 00 20 00 49 00 4e 00 54 00 45 00 52 00 4e 00 41 00 4c 00 20 00 55 00 53 00 45 00 20 00 4f 00 4e 00 4c 00 59 00 5d 00 } //1 All your files belong to me! Pay the ransom if you want them back.[HP INTERNAL USE ONLY]
		$a_03_2 = {5c 72 61 6e 73 6f 6d 77 61 72 65 5f 73 61 6d 70 6c 65 5c 6f 62 6a 5c 90 02 10 5c 72 61 6e 73 6f 6d 77 61 72 65 5f 73 61 6d 70 6c 65 2e 70 64 62 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}