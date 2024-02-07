
rule Ransom_Win32_RADAMANT_DA_MTB{
	meta:
		description = "Ransom:Win32/RADAMANT.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {2e 52 41 44 41 4d 41 4e 54 } //01 00  .RADAMANT
		$a_81_1 = {59 4f 55 52 5f 46 49 4c 45 53 2e 75 72 6c } //01 00  YOUR_FILES.url
		$a_81_2 = {4e 6f 77 20 62 65 67 69 6e 73 20 74 68 65 20 64 65 63 72 79 70 74 69 6f 6e 20 6f 66 20 79 6f 75 72 20 66 69 6c 65 73 } //01 00  Now begins the decryption of your files
		$a_81_3 = {59 6f 75 72 20 73 79 73 74 65 6d 20 77 61 73 20 64 65 63 72 79 70 74 65 64 } //00 00  Your system was decrypted
	condition:
		any of ($a_*)
 
}