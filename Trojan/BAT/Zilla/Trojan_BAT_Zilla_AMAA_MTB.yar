
rule Trojan_BAT_Zilla_AMAA_MTB{
	meta:
		description = "Trojan:BAT/Zilla.AMAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 04 00 "
		
	strings :
		$a_03_0 = {0a 06 07 6f 90 01 01 00 00 0a 06 18 6f 90 01 01 00 00 0a 06 19 6f 90 01 01 00 00 0a 06 6f 90 01 01 00 00 0a 0d 09 03 16 03 8e 69 6f 90 01 01 00 00 0a 2a 90 00 } //01 00 
		$a_80_1 = {64 61 73 66 61 73 66 61 73 66 61 61 64 61 } //dasfasfasfaada  01 00 
		$a_80_2 = {67 73 64 64 64 67 73 67 64 64 64 64 64 64 64 64 68 68 } //gsdddgsgddddddddhh  01 00 
		$a_80_3 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //RijndaelManaged  00 00 
	condition:
		any of ($a_*)
 
}