
rule Trojan_BAT_AgentTesla_LAP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LAP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_81_0 = {47 2d 65 2d 74 2d 4d 2d 65 2d 74 2d 68 2d 6f 2d 64 } //1 G-e-t-M-e-t-h-o-d
		$a_01_1 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_01_2 = {59 58 5a 31 32 33 34 35 36 37 38 39 30 } //1 YXZ1234567890
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_01_4 = {54 6f 43 68 61 72 41 72 72 61 79 } //1 ToCharArray
		$a_01_5 = {00 59 58 5a 32 00 } //1 夀婘2
		$a_01_6 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_01_7 = {00 59 58 5a 33 00 } //1 夀婘3
		$a_01_8 = {00 59 58 5a 35 00 } //1 夀婘5
		$a_01_9 = {53 70 6c 69 74 } //1 Split
		$a_01_10 = {53 75 73 70 65 6e 64 4c 61 79 6f 75 74 } //1 SuspendLayout
	condition:
		((#a_81_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=11
 
}