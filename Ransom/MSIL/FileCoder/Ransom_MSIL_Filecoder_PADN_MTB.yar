
rule Ransom_MSIL_Filecoder_PADN_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.PADN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 69 00 73 00 63 00 6f 00 72 00 64 00 3a 00 20 00 74 00 77 00 6f 00 62 00 74 00 36 00 39 00 20 00 6f 00 72 00 20 00 6c 00 69 00 66 00 65 00 6f 00 66 00 61 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 } //01 00  Discord: twobt69 or lifeofacookie
		$a_01_1 = {49 00 66 00 20 00 73 00 6b 00 69 00 70 00 20 00 74 00 68 00 65 00 20 00 71 00 75 00 65 00 75 00 65 00 2c 00 20 00 61 00 64 00 64 00 20 00 75 00 73 00 20 00 6f 00 6e 00 20 00 44 00 69 00 73 00 63 00 6f 00 72 00 64 00 20 00 61 00 6e 00 64 00 20 00 70 00 61 00 79 00 20 00 75 00 73 00 20 00 76 00 69 00 61 00 20 00 50 00 61 00 79 00 70 00 61 00 6c 00 20 00 6f 00 72 00 20 00 43 00 72 00 79 00 70 00 74 00 6f 00 2e 00 } //01 00  If skip the queue, add us on Discord and pay us via Paypal or Crypto.
		$a_01_2 = {6f 00 70 00 74 00 69 00 6d 00 75 00 6d 00 2e 00 78 00 79 00 7a 00 } //00 00  optimum.xyz
	condition:
		any of ($a_*)
 
}