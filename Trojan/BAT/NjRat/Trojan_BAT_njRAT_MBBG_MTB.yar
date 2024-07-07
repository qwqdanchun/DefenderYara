
rule Trojan_BAT_njRAT_MBBG_MTB{
	meta:
		description = "Trojan:BAT/njRAT.MBBG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_01_0 = {33 00 30 00 30 00 30 00 30 00 00 84 b1 54 00 41 00 5a 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 51 00 41 00 41 00 42 00 41 00 41 00 67 00 42 00 41 00 73 00 41 00 51 00 41 00 41 00 41 00 41 00 4b 00 6f 00 41 00 59 00 41 } //2
		$a_01_1 = {41 00 52 00 41 00 52 00 41 00 41 00 69 00 47 00 41 00 4b 00 68 00 53 00 41 00 71 00 41 00 72 00 54 00 61 00 41 00 41 00 51 00 68 00 77 00 41 00 78 00 45 00 51 00 79 00 6e 00 41 00 68 00 52 00 } //2 ARARAAiGAKhSAqArTaAAQhwAxEQynAhR
		$a_01_2 = {45 00 6e 00 74 00 72 00 79 00 50 00 6f 00 69 00 6e 00 74 00 } //1 EntryPoint
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1) >=5
 
}