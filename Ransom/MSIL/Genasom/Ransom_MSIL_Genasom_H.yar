
rule Ransom_MSIL_Genasom_H{
	meta:
		description = "Ransom:MSIL/Genasom.H,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {77 00 61 00 72 00 6e 00 69 00 6e 00 67 00 73 00 20 00 62 00 65 00 66 00 6f 00 72 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 20 00 62 00 65 00 63 00 6f 00 6d 00 65 00 73 00 20 00 75 00 6e 00 75 00 73 00 65 00 61 00 62 00 6c 00 65 00 2e 00 } //01 00  warnings before your system becomes unuseable.
		$a_01_1 = {54 00 68 00 69 00 73 00 20 00 69 00 73 00 20 00 77 00 61 00 72 00 6e 00 69 00 6e 00 67 00 20 00 6e 00 75 00 6d 00 62 00 65 00 72 00 } //01 00  This is warning number
		$a_01_2 = {53 00 75 00 72 00 76 00 65 00 79 00 20 00 73 00 61 00 79 00 73 00 2e 00 2e 00 2e 00 } //01 00  Survey says...
		$a_01_3 = {55 00 6e 00 6c 00 6f 00 63 00 6b 00 20 00 63 00 6f 00 64 00 65 00 3a 00 } //01 00  Unlock code:
		$a_01_4 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 20 00 2d 00 73 00 20 00 2d 00 74 00 20 00 30 00 } //01 00  shutdown -s -t 0
		$a_01_5 = {62 00 74 00 6e 00 56 00 61 00 6c 00 69 00 64 00 61 00 74 00 65 00 } //01 00  btnValidate
		$a_01_6 = {74 00 72 00 6f 00 6c 00 6f 00 6c 00 6f 00 6c 00 6f 00 6c 00 6f 00 6c 00 6f 00 6c 00 6f 00 6c 00 6f 00 6c 00 6f 00 6c 00 6f 00 6c 00 6f 00 2e 00 63 00 6f 00 6d 00 } //01 00  trololololololololololo.com
		$a_01_7 = {2e 00 79 00 6f 00 75 00 70 00 6f 00 72 00 6e 00 2e 00 63 00 6f 00 6d 00 } //01 00  .youporn.com
		$a_01_8 = {2e 00 6c 00 6f 00 6c 00 74 00 72 00 61 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 } //01 00  .loltrain.com
		$a_03_9 = {74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 90 01 02 63 00 6d 00 64 00 90 01 02 6d 00 73 00 63 00 6f 00 6e 00 66 00 69 00 67 00 90 00 } //00 00 
		$a_00_10 = {87 10 00 00 31 } //b4 42 
	condition:
		any of ($a_*)
 
}