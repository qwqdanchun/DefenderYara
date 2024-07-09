
rule Trojan_BAT_Kryptik_AS_MTB{
	meta:
		description = "Trojan:BAT/Kryptik.AS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 03 00 00 "
		
	strings :
		$a_03_0 = {13 20 00 03 72 ?? ?? ?? ?? 6f ?? ?? ?? ?? 13 21 11 21 19 8d ?? ?? ?? ?? 25 16 7e ?? ?? ?? ?? a2 25 17 7e ?? ?? ?? ?? a2 25 18 72 ?? ?? ?? ?? a2 28 ?? ?? ?? ?? 26 20 ?? ?? ?? ?? 0a 2b 00 06 2a } //10
		$a_80_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //CreateInstance  2
		$a_80_2 = {41 63 74 69 76 61 74 6f 72 } //Activator  2
	condition:
		((#a_03_0  & 1)*10+(#a_80_1  & 1)*2+(#a_80_2  & 1)*2) >=14
 
}