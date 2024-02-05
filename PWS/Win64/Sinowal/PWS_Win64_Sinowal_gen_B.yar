
rule PWS_Win64_Sinowal_gen_B{
	meta:
		description = "PWS:Win64/Sinowal.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 8d 44 24 28 48 8b e1 48 8b 28 48 8b 70 08 48 8b 78 10 48 8b 58 18 41 50 52 48 83 ec 90 01 01 48 c7 c2 01 00 00 00 49 8b c9 48 81 e1 00 00 ff ff 41 ff d1 48 83 c4 90 01 01 5a 41 58 48 8b ca 48 c7 c2 00 00 00 00 49 8b c0 49 c7 c0 00 80 00 00 49 c7 c1 00 00 00 00 ff e0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}