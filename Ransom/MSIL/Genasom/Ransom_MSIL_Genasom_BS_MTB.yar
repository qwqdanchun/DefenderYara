
rule Ransom_MSIL_Genasom_BS_MTB{
	meta:
		description = "Ransom:MSIL/Genasom.BS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 00 63 00 20 00 76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //01 00  /c vssadmin.exe delete shadows /all /quiet
		$a_00_1 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 64 00 61 00 74 00 61 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 20 00 75 00 73 00 2e 00 20 00 59 00 6f 00 75 00 20 00 77 00 61 00 6e 00 74 00 20 00 74 00 6f 00 20 00 72 00 65 00 74 00 75 00 72 00 6e 00 3f 00 20 00 43 00 6f 00 6e 00 74 00 61 00 63 00 74 00 20 00 74 00 6f 00 20 00 45 00 6d 00 61 00 69 00 6c 00 3a 00 20 00 55 00 6e 00 6c 00 6f 00 63 00 6b 00 6d 00 65 00 35 00 30 00 31 00 40 00 70 00 72 00 6f 00 74 00 6f 00 6e 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 68 00 } //01 00  All your data has been locked us. You want to return? Contact to Email: Unlockme501@protonmail.ch
		$a_01_2 = {43 3a 5c 55 73 65 72 73 5c 6d 76 6a 5c 4d 75 73 69 63 5c 6d 65 68 64 69 20 72 61 6e 73 6f 6d 77 61 72 65 5c 6d 65 68 64 69 20 75 70 64 61 74 65 } //00 00  C:\Users\mvj\Music\mehdi ransomware\mehdi update
	condition:
		any of ($a_*)
 
}