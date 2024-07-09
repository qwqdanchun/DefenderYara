
rule Trojan_BAT_Gecranp_A{
	meta:
		description = "Trojan:BAT/Gecranp.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {06 28 07 00 00 06 39 ac 00 00 00 26 20 04 00 00 00 16 39 76 00 00 00 26 38 b7 00 00 00 ?? 0a 20 06 00 00 00 38 64 00 00 00 00 1a 0a 20 05 00 00 00 38 57 00 00 00 38 99 00 00 00 1f 55 0a } //1
		$a_02_1 = {38 91 00 00 00 16 0a 38 8a 00 00 00 28 03 00 00 06 20 07 00 00 00 28 08 00 00 06 3a 2f 00 00 00 38 2a 00 00 00 07 17 59 45 04 00 00 00 a2 ?? ?? ?? c0 ?? ?? ?? c8 ?? ?? ?? cf ?? ?? ?? 38 32 00 00 00 20 04 00 00 00 fe 0e 02 00 fe 0c 02 00 45 08 00 00 00 77 ff ff ff b1 ff ff ff 66 ff ff ff 00 00 00 00 77 ff ff ff 10 00 00 00 84 ff ff ff 1c 00 00 00 38 61 ff ff ff 26 20 02 00 00 00 38 cb ff ff ff 06 0b 20 01 00 00 00 38 bf ff ff ff 00 38 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}