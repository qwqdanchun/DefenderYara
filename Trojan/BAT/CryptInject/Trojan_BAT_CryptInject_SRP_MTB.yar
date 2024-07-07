
rule Trojan_BAT_CryptInject_SRP_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.SRP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {48 69 74 6c 65 72 43 69 72 63 75 6d 76 65 6e 74 } //1 HitlerCircumvent
		$a_01_1 = {73 00 58 00 2f 00 48 00 33 00 39 00 71 00 73 00 63 00 32 00 75 00 33 00 2b 00 54 00 72 00 67 00 51 00 32 00 68 00 75 00 50 00 2f 00 53 00 77 00 34 00 47 00 50 00 31 00 6f 00 6f 00 61 00 43 00 48 00 42 00 51 00 67 00 41 00 58 00 56 00 46 00 70 00 50 00 63 00 3d 00 } //1 sX/H39qsc2u3+TrgQ2huP/Sw4GP1ooaCHBQgAXVFpPc=
		$a_01_2 = {24 00 24 00 24 00 61 00 24 00 6d 00 24 00 73 00 24 00 69 00 24 00 2e 00 64 00 6c 00 6c 00 24 00 24 00 24 00 } //1 $$$a$m$s$i$.dll$$$
		$a_01_3 = {24 00 24 00 24 00 41 00 6d 00 24 00 73 00 69 00 24 00 53 00 63 00 24 00 61 00 6e 00 24 00 42 00 75 00 66 00 66 00 65 00 72 00 24 00 24 00 24 00 } //1 $$$Am$si$Sc$an$Buffer$$$
		$a_01_4 = {24 00 24 00 24 00 75 00 46 00 63 00 41 00 42 00 34 00 44 00 44 00 24 00 24 00 24 00 } //1 $$$uFcAB4DD$$$
		$a_01_5 = {24 00 24 00 24 00 43 00 61 00 6c 00 6c 00 42 00 79 00 4e 00 61 00 6d 00 65 00 24 00 24 00 24 00 } //1 $$$CallByName$$$
	condition:
		((#a_81_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}