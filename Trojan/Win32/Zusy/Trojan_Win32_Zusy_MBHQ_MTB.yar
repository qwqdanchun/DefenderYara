
rule Trojan_Win32_Zusy_MBHQ_MTB{
	meta:
		description = "Trojan:Win32/Zusy.MBHQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 72 68 74 6a 79 6b 75 44 65 66 67 72 68 74 6a 79 } //01 00  FrhtjykuDefgrhtjy
		$a_01_1 = {53 66 67 68 74 79 6a 46 68 74 6a 79 6b 75 } //01 00  SfghtyjFhtjyku
		$a_01_2 = {72 67 74 68 72 79 6a 74 2e 64 6c 6c } //00 00  rgthryjt.dll
	condition:
		any of ($a_*)
 
}