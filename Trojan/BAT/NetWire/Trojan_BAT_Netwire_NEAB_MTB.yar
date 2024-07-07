
rule Trojan_BAT_Netwire_NEAB_MTB{
	meta:
		description = "Trojan:BAT/Netwire.NEAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 02 00 00 "
		
	strings :
		$a_01_0 = {28 0f 00 00 0a 6f 10 00 00 0a 28 14 00 00 0a 73 15 00 00 0a 6f 16 00 00 0a 11 09 0c 08 6f 17 00 00 0a 17 6f 18 00 00 0a 08 } //10
		$a_01_1 = {4c 00 30 00 4d 00 67 00 63 00 32 00 4e 00 6f 00 64 00 47 00 46 00 7a 00 61 00 33 00 4d 00 67 00 4c 00 32 00 4e 00 79 00 5a 00 57 00 46 00 30 00 5a 00 53 00 41 00 76 00 64 00 47 00 34 00 67 00 58 00 47 00 74 00 61 00 52 00 30 00 64 00 49 00 49 00 43 00 39 00 30 00 63 00 69 00 41 00 69 00 } //5 L0Mgc2NodGFza3MgL2NyZWF0ZSAvdG4gXGtaR0dIIC90ciAi
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*5) >=15
 
}