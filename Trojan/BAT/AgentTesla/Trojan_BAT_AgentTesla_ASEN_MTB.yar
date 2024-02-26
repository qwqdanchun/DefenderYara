
rule Trojan_BAT_AgentTesla_ASEN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASEN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {4a 00 54 00 47 00 53 00 43 00 56 00 44 00 49 00 4e 00 46 00 5a 00 53 00 41 00 34 00 44 00 53 00 4e 00 35 00 54 00 58 00 7e 00 59 00 4c 00 4e 00 7e 00 25 00 52 00 57 00 43 00 33 00 54 00 4f 00 4e 00 35 00 32 00 43 00 41 00 59 00 54 00 46 00 7e 00 25 00 5a 00 48 00 4b 00 33 00 } //01 00  JTGSCVDINFZSA4DSN5TX~YLN~%RWC3TON52CAYTF~%ZHK3
		$a_01_1 = {41 00 51 00 41 00 51 00 49 00 41 00 4f 00 4d 00 41 00 48 00 47 00 41 00 44 00 46 00 41 00 25 00 57 00 51 00 41 00 59 00 51 00 41 00 4e 00 51 00 41 00 48 00 53 00 41 00 25 00 23 00 25 00 4c 00 23 00 5a 00 49 00 41 00 4f 00 49 00 41 00 48 00 47 00 41 00 44 00 4a 00 41 00 25 00 58 00 51 00 41 00 33 00 51 00 } //00 00  AQAQIAOMAHGADFA%WQAYQANQAHSA%#%L#ZIAOIAHGADJA%XQA3Q
	condition:
		any of ($a_*)
 
}