
rule Trojan_Win32_Glupteba_P_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.P!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_02_0 = {09 c9 21 ff e8 90 01 04 81 ef 90 01 04 49 31 02 81 e9 90 01 04 41 42 09 c9 39 f2 75 db 51 59 29 ff c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}