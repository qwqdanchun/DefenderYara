
rule Trojan_Win32_Cerber_MPI_MTB{
	meta:
		description = "Trojan:Win32/Cerber.MPI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {ff 20 e8 00 00 00 00 58 05 90 01 04 ff 20 e8 00 00 00 00 58 05 90 01 04 ff 20 e8 00 00 00 00 58 05 90 01 04 ff 20 e8 00 00 00 00 58 05 90 01 04 ff 20 e8 00 00 00 00 58 05 90 01 04 ff 20 e8 00 00 00 00 58 05 90 01 04 ff 20 e8 00 00 00 00 58 05 90 01 04 ff 20 e8 00 00 00 00 58 05 90 01 04 ff 20 e8 00 00 00 00 58 05 90 01 04 ff 20 e8 00 00 00 00 58 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}