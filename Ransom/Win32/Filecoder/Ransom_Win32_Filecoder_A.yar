
rule Ransom_Win32_Filecoder_A{
	meta:
		description = "Ransom:Win32/Filecoder.A,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {8a 07 30 04 39 8a 07 30 04 2f 47 4b 75 } //01 00 
		$a_01_1 = {03 ca 6a 10 8a 04 0e 30 01 42 58 3b d0 7c } //00 00 
	condition:
		any of ($a_*)
 
}