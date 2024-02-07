
rule Trojan_BAT_PrivateLoader_B_MTB{
	meta:
		description = "Trojan:BAT/PrivateLoader.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {63 00 72 00 65 00 61 00 74 00 69 00 76 00 65 00 6c 00 69 00 62 00 61 00 6d 00 63 00 72 00 65 00 61 00 74 00 69 00 76 00 65 00 6c 00 69 00 62 00 73 00 69 00 63 00 72 00 65 00 61 00 74 00 69 00 76 00 65 00 6c 00 69 00 62 00 2e 00 63 00 72 00 65 00 61 00 74 00 69 00 76 00 65 00 6c 00 69 00 62 00 64 00 63 00 72 00 65 00 61 00 74 00 69 00 76 00 65 00 6c 00 69 00 62 00 6c 00 63 00 72 00 65 00 61 00 74 00 69 00 76 00 65 00 6c 00 69 00 62 00 6c 00 63 00 72 00 65 00 61 00 74 00 69 00 76 00 65 00 6c 00 69 00 62 00 } //02 00  creativelibamcreativelibsicreativelib.creativelibdcreativeliblcreativeliblcreativelib
		$a_01_1 = {66 00 75 00 6e 00 66 00 75 00 6e 00 41 00 6d 00 66 00 75 00 6e 00 66 00 75 00 6e 00 73 00 69 00 66 00 75 00 6e 00 66 00 75 00 6e 00 53 00 66 00 75 00 6e 00 66 00 75 00 6e 00 63 00 66 00 75 00 6e 00 66 00 75 00 6e 00 61 00 66 00 75 00 6e 00 66 00 75 00 6e 00 6e 00 42 00 66 00 75 00 6e 00 66 00 75 00 6e 00 75 00 66 00 66 00 75 00 6e 00 66 00 75 00 6e 00 66 00 65 00 66 00 75 00 6e 00 66 00 75 00 6e 00 72 00 66 00 75 00 6e 00 66 00 75 00 6e 00 } //02 00  funfunAmfunfunsifunfunSfunfuncfunfunafunfunnBfunfunuffunfunfefunfunrfunfun
		$a_01_2 = {61 52 33 6e 62 66 38 64 51 70 32 66 65 4c 6d 6b 33 31 2e 6c 53 66 67 41 70 61 74 6b 64 78 73 56 63 47 63 72 6b 74 6f 46 64 2e 72 65 73 6f 75 72 63 65 73 } //00 00  aR3nbf8dQp2feLmk31.lSfgApatkdxsVcGcrktoFd.resources
	condition:
		any of ($a_*)
 
}