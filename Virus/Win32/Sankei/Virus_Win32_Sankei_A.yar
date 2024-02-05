
rule Virus_Win32_Sankei_A{
	meta:
		description = "Virus:Win32/Sankei.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {ff 15 b4 16 43 00 8b d8 68 90 01 04 53 ff 15 b8 16 43 00 a3 47 a0 43 00 68 00 00 00 f0 6a 01 6a 00 6a 00 68 43 a0 43 00 ff 15 47 a0 43 00 68 90 01 04 53 ff 15 b8 16 43 00 a3 47 a0 43 00 68 3b a0 43 00 6a 00 6a 00 68 03 80 00 00 ff 35 43 a0 43 00 ff 15 47 a0 43 00 68 90 01 04 53 ff 15 b8 16 43 00 a3 47 a0 43 00 6a 00 6a 20 68 75 90 90 43 00 ff 35 3b a0 43 00 ff 15 47 a0 43 00 68 90 01 04 53 ff 15 b8 16 43 00 a3 47 a0 43 00 68 3f a0 43 00 6a 00 ff 35 3b a0 43 00 68 01 68 00 00 ff 35 43 a0 43 00 ff 15 47 a0 43 00 68 90 01 04 53 ff 15 b8 16 43 00 a3 47 a0 43 00 33 c0 68 f1 9f 43 00 68 ea 90 90 43 00 50 6a 01 50 ff 35 3f a0 43 00 ff 15 47 a0 43 00 85 c0 eb 05 e9 d6 95 fc ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}