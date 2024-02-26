
rule Trojan_BAT_XWorm_AMBA_MTB{
	meta:
		description = "Trojan:BAT/XWorm.AMBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {d2 05 53 00 71 00 51 00 c7 05 44 00 4d 00 41 00 c7 05 44 00 41 00 45 00 c7 05 44 00 41 00 41 00 a9 05 2a 00 38 00 41 00 c7 05 49 00 67 00 41 00 c7 05 44 00 41 00 41 00 c7 05 44 00 41 00 41 00 d7 } //02 00 
		$a_01_1 = {d2 05 48 00 30 00 68 00 d0 05 42 00 68 00 70 00 e5 05 7c 00 42 00 77 00 e5 05 68 00 39 00 6e 00 } //01 00 
		$a_00_2 = {53 00 65 00 6c 00 65 00 6e 00 61 00 47 00 6f 00 6d 00 65 00 7a 00 2e 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 } //00 00  SelenaGomez.Program
	condition:
		any of ($a_*)
 
}